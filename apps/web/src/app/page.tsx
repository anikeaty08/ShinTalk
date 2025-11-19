/* eslint-disable @typescript-eslint/no-misused-promises */
'use client';

import { useEffect, useMemo, useState, useCallback } from 'react';
import { Hero } from '@/components/Hero';
import { WalletPanel } from '@/components/WalletPanel';
import { ProfileForm } from '@/components/ProfileForm';
import { ContactManager } from '@/components/ContactManager';
import { ConversationList } from '@/components/ConversationList';
import { ChatWindow } from '@/components/ChatWindow';
import { useWalletStore } from '@/hooks/useWalletStore';
import { useChatStore } from '@/state/chat-store';
import { env } from '@/lib/env';
import {
  addContact,
  createConversation,
  fetchMessages,
  listContacts,
  listConversations,
  readProfile,
  registerProfile,
  sendMessage,
} from '@/lib/massa';
import { uploadFile, uploadJson } from '@/lib/ipfs';
import { encryptPayload, decryptPayload } from '@/lib/encryption';
import { ensureKeyPair, loadKeyPair } from '@/lib/keychain';
import {
  ConversationDraft,
  DecryptedMessage,
  ProfileFormValues,
  MessageBody,
} from '@/types/chat';

export default function Home() {
  const status = useWalletStore((state) => state.status);
  const address = useWalletStore((state) => state.address);
  const network = useWalletStore((state) => state.network);
  const wallets = useWalletStore((state) => state.wallets);
  const provider = useWalletStore((state) => state.provider);
  const discoverWallets = useWalletStore((state) => state.discover);
  const connectWallet = useWalletStore((state) => state.connect);
  const disconnectWallet = useWalletStore((state) => state.disconnect);
  const profile = useChatStore((state) => state.profile);
  const contacts = useChatStore((state) => state.contacts);
  const conversations = useChatStore((state) => state.conversations);
  const messagesMap = useChatStore((state) => state.messages);
  const selectedConversationId = useChatStore(
    (state) => state.selectedConversationId,
  );
  const setProfile = useChatStore((state) => state.setProfile);
  const setContacts = useChatStore((state) => state.setContacts);
  const setConversations = useChatStore((state) => state.setConversations);
  const selectConversation = useChatStore((state) => state.selectConversation);
  const upsertMessages = useChatStore((state) => state.upsertMessages);
  const resetChat = useChatStore((state) => state.reset);
  const setLoading = useChatStore((state) => state.setLoading);
  const [feedback, setFeedback] = useState<string | null>(null);
  const [profileBusy, setProfileBusy] = useState(false);
  const [contactBusy, setContactBusy] = useState(false);
  const [conversationBusy, setConversationBusy] = useState(false);
  const [sendBusy, setSendBusy] = useState(false);

  const bootstrap = useCallback(
    async (address: string) => {
      setLoading(true);
      try {
        const [profileData, contactsData, conversationsData] = await Promise.all(
          [readProfile(address), listContacts(address), listConversations(address)],
        );
        setProfile(profileData);
        setContacts(contactsData);
        setConversations(conversationsData);
      } catch (error) {
        console.error(error);
        setFeedback('Failed to load on-chain data. Check RPC and contract address.');
      } finally {
        setLoading(false);
      }
    },
    [setContacts, setConversations, setLoading, setProfile],
  );

  useEffect(() => {
    discoverWallets();
  }, [discoverWallets]);

  useEffect(() => {
    if (!address) {
      resetChat();
      return;
    }

    void bootstrap(address);
  }, [address, bootstrap, resetChat]);

  const decryptMessages = useCallback(
    async (messages: DecryptedMessage[]) => {
      if (!address) return [];
      const keypair =
        (await loadKeyPair(address)) ?? (await ensureKeyPair(address));
      const resolved = await Promise.all(
        messages.map(async (message) => {
          try {
            const res = await fetch(`/api/ipfs?cid=${message.payloadCid}`);
            const payload = res.ok
              ? await res.text()
              : await fetch(resolveIpfsUrl(message.payloadCid)).then((r) =>
                  r.text(),
                );
            const body = decryptPayload(
              payload,
              address!,
              keypair.secretKey,
            );
            return { ...message, body: body ?? undefined };
          } catch (error) {
            console.error('decrypt error', error);
            return { ...message, error: 'Unable to decrypt payload' };
          }
        }),
      );
      return resolved;
    },
    [address],
  );

  const selectedConversation = useMemo(
    () =>
      conversations.find(
        (c) => c.conversationId === selectedConversationId,
      ),
    [conversations, selectedConversationId],
  );

  useEffect(() => {
    if (!selectedConversation?.conversationId || !address) return;

    let cancelled = false;
    let cursor = 0;

    const sync = async () => {
      if (cancelled) return;
      try {
        const { messages, nextCursor } = await fetchMessages({
          conversationId: selectedConversation.conversationId,
          cursor,
          limit: 50,
        });
        if (messages.length) {
          const decrypted = await decryptMessages(messages);
          upsertMessages(
            selectedConversation.conversationId,
            decrypted,
          );
          cursor = nextCursor;
        }
      } catch (error) {
        console.error('Failed to fetch messages', error);
      }
      if (!cancelled) {
        setTimeout(sync, 7000);
      }
    };

    void sync();
    return () => {
      cancelled = true;
    };
  }, [
    decryptMessages,
    selectedConversation?.conversationId,
    upsertMessages,
    address,
  ]);

  async function handleProfileSubmit(values: ProfileFormValues) {
    if (!provider || !address) return;
    setProfileBusy(true);
    try {
      const keypair = await ensureKeyPair(address);
      await registerProfile(provider, {
        ...values,
        encryptionKey: keypair.publicKey,
      });
      await bootstrap(address);
      setFeedback('Profile saved on-chain.');
    } catch (error) {
      console.error(error);
      setFeedback('Failed to save profile.');
    } finally {
      setProfileBusy(false);
    }
  }

  async function handleAddContact(payload: { address: string; alias: string }) {
    if (!provider || !address) return;
    setContactBusy(true);
    try {
      await addContact(provider, payload.address, payload.alias);
      const contactsList = await listContacts(address);
      setContacts(contactsList);
      setFeedback('Contact added.');
    } catch (error) {
      console.error(error);
      setFeedback('Failed to add contact. Ensure the peer has a profile.');
    } finally {
      setContactBusy(false);
    }
  }

  async function handleCreateConversation(draft: ConversationDraft) {
    if (!provider || !address) return;
    setConversationBusy(true);
    try {
      await createConversation(provider, draft);
      const conversationList = await listConversations(address);
      setConversations(conversationList);
      selectConversation(draft.conversationId);
      setFeedback('Conversation registered on-chain.');
    } catch (error) {
      console.error(error);
      setFeedback('Failed to create conversation.');
    } finally {
      setConversationBusy(false);
    }
  }

  async function handleSendMessage(input: { text: string; file?: File }) {
    if (!provider || !address || !selectedConversation) {
      return;
    }
    if (!profile) {
      setFeedback('Create your profile before sending messages.');
      return;
    }
    setSendBusy(true);
    try {
      const members = selectedConversation.members;
      const recipients = await Promise.all(
        members.map(async (member) => {
          const profile = await readProfile(member);
          if (!profile?.encryptionKey) {
            throw new Error(`Missing encryption key for ${member}`);
          }
          return { address: member, publicKey: profile.encryptionKey };
        }),
      );
      const body: MessageBody = {
        text: input.text,
      };
      if (input.file) {
        const cid = await uploadFile(input.file);
        body.mediaCid = cid;
        body.mediaType = input.file.type;
      }
      const { serialized, checksum } = await encryptPayload(
        address,
        selectedConversation.conversationId,
        body,
        recipients,
      );
      const payloadCid = await uploadJson(serialized);
      await sendMessage(provider, {
        conversationId: selectedConversation.conversationId,
        content: input.text,
        mediaCid: body.mediaCid,
        payloadCid,
        ciphertextHash: checksum,
        mimeType: 'application/json',
        preview: input.text.slice(0, 40) || 'Encrypted attachment',
      });
      setFeedback('Message dispatched. Waiting for inclusion...');
    } catch (error) {
      console.error(error);
      setFeedback('Failed to send message.');
    } finally {
      setSendBusy(false);
    }
  }

  return (
    <div className="min-h-screen px-4 sm:px-8 py-10 space-y-8">
      <Hero />
      {feedback && (
        <div className="glass-panel rounded-2xl p-4 text-sm text-brand-100 flex justify-between">
          <span>{feedback}</span>
          <button
            className="text-brand-300"
            onClick={() => setFeedback(null)}
          >
            Dismiss
          </button>
        </div>
      )}
      <div className="grid gap-6 lg:grid-cols-[360px,1fr]">
        <div className="space-y-4">
          <WalletPanel
            status={status}
            address={address}
            network={network}
            wallets={wallets}
            onConnect={(name) => connectWallet(name)}
            onDisconnect={() => disconnectWallet()}
          />
          <ProfileForm
            initialProfile={profile ?? undefined}
            onSubmit={handleProfileSubmit}
            busy={profileBusy}
            defaultAvatar={env.defaultAvatar}
          />
          <ContactManager
            contacts={contacts}
            onAdd={handleAddContact}
            busy={contactBusy}
          />
        </div>
        <div className="glass-panel rounded-3xl p-6 h-[75vh] flex flex-col">
          <div className="grid grid-cols-1 lg:grid-cols-[260px,1fr] gap-6 h-full">
            <ConversationList
              conversations={conversations}
              contacts={contacts}
              selectedId={selectedConversationId}
              onSelect={(id) => selectConversation(id)}
              onCreate={handleCreateConversation}
              busy={conversationBusy}
              selfAddress={address}
            />
            <ChatWindow
              conversation={selectedConversation}
              messages={
                selectedConversation
                  ? messagesMap[selectedConversation.conversationId] ?? []
                  : []
              }
              selfAddress={address}
              onSend={handleSendMessage}
              busy={sendBusy}
            />
          </div>
        </div>
      </div>
    </div>
  );
}

function resolveIpfsUrl(cid: string) {
  if (cid.startsWith('http')) return cid;
  const gateway = env.ipfsGateway.endsWith('/')
    ? env.ipfsGateway
    : `${env.ipfsGateway}/`;
  return `${gateway}${cid}`;
}
