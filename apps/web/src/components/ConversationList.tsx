import { useState } from 'react';
import { Contact, Conversation, ConversationDraft } from '@/types/chat';

type Props = {
  conversations: Conversation[];
  contacts: Contact[];
  selectedId?: string;
  onSelect: (id: string) => void;
  onCreate: (draft: ConversationDraft) => Promise<void>;
  busy?: boolean;
  selfAddress?: string;
};

export function ConversationList({
  conversations,
  contacts,
  selectedId,
  onSelect,
  onCreate,
  busy,
  selfAddress,
}: Props) {
  const [showForm, setShowForm] = useState(false);
  const [title, setTitle] = useState('');
  const [memberInput, setMemberInput] = useState('');
  const [isGroup, setIsGroup] = useState(false);

  return (
    <div className="h-full flex flex-col">
      <div className="flex items-center justify-between mb-4">
        <h3 className="text-lg font-semibold">Chats</h3>
        <button
          className="text-xs rounded-full px-3 py-1 border border-white/20 hover:bg-white/10"
          onClick={() => setShowForm((prev) => !prev)}
        >
          {showForm ? 'Close' : 'New chat'}
        </button>
      </div>
      {showForm && (
        <div className="space-y-2 border border-white/10 rounded-2xl p-3 mb-4 text-sm">
          <input
            className="w-full rounded-xl bg-white/5 border border-white/10 px-3 py-2"
            placeholder="Chat title"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
          />
          <textarea
            rows={2}
            className="w-full rounded-xl bg-white/5 border border-white/10 px-3 py-2"
            placeholder="Wallet addresses separated by commas"
            value={memberInput}
            onChange={(e) => setMemberInput(e.target.value)}
          />
          <label className="flex items-center gap-2 text-xs text-brand-200">
            <input
              type="checkbox"
              checked={isGroup}
              onChange={(e) => setIsGroup(e.target.checked)}
            />
            Group chat
          </label>
          <button
            className="w-full rounded-full bg-brand-500 py-2 text-sm font-medium hover:bg-brand-400 disabled:opacity-40"
            disabled={busy}
            onClick={async () => {
              const members = dedupeAddresses(memberInput, contacts).filter(
                Boolean,
              );
              if (!members.length || !selfAddress) return;
              const conversationId = buildConversationId([...members, selfAddress]);
              await onCreate({
                conversationId,
                title: title || friendlyTitle(members, contacts),
                avatarCid: '',
                isGroup,
                members,
              });
              setMemberInput('');
              setTitle('');
              setShowForm(false);
            }}
          >
            Create conversation
          </button>
        </div>
      )}
      <div className="flex-1 overflow-y-auto chat-scroll space-y-2">
        {conversations.length === 0 && (
          <p className="text-sm text-brand-200">
            No conversations yet. Create one from your contacts to start chatting.
          </p>
        )}
        {conversations.map((conversation) => (
          <button
            key={conversation.conversationId}
            className={`w-full text-left rounded-2xl border px-4 py-3 transition ${
              conversation.conversationId === selectedId
                ? 'border-brand-400 bg-white/5'
                : 'border-white/10 hover:border-brand-300/40'
            }`}
            onClick={() => onSelect(conversation.conversationId)}
          >
            <p className="font-medium">
              {conversation.title || friendlyTitle(conversation.members, contacts)}
            </p>
            <p className="text-xs text-brand-200">
              {conversation.members.length} members
            </p>
          </button>
        ))}
      </div>
    </div>
  );
}

function dedupeAddresses(input: string, contacts: Contact[]) {
  const typed = input
    .split(',')
    .map((entry) => entry.trim())
    .filter(Boolean);
  const aliasLookup = new Map(
    contacts.map((contact) => [contact.alias?.toLowerCase(), contact.peer]),
  );

  return Array.from(
    new Set(
      typed.map((entry) => aliasLookup.get(entry.toLowerCase()) ?? entry),
    ),
  );
}

function friendlyTitle(members: string[], contacts: Contact[]) {
  if (members.length === 1) {
    const match = contacts.find((c) => c.peer === members[0]);
    return match?.alias || short(members[0]);
  }
  return members.length > 2
    ? `${short(members[0])} +${members.length - 1}`
    : members.map(short).join(', ');
}

function short(addr: string) {
  return `${addr.slice(0, 4)}…${addr.slice(-4)}`;
}

export function buildConversationId(members: string[]) {
  return members
    .map((m) => m.trim())
    .filter(Boolean)
    .sort()
    .join('::');
}

