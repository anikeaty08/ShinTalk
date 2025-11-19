import {
  Args,
  ArrayTypes,
  JsonRpcProvider,
  Mas,
  Provider,
} from '@massalabs/massa-web3';
import {
  ChatMessage,
  Contact,
  Conversation,
  ConversationDraft,
  MessageDraft,
  Profile,
  ProfileFormValues,
} from '@/types/chat';
import { env, ensureEnv } from './env';
import {
  decodeContacts,
  decodeConversations,
  decodeMessagesPayload,
  decodeProfile,
} from './serializers';

type PublicClient = ReturnType<typeof JsonRpcProvider.fromRPCUrl>;

let publicClient: PublicClient | null = null;

const coinsAmount = () => Mas.fromString(env.callCoins);

function getPublicClient() {
  if (!publicClient) {
    publicClient = JsonRpcProvider.fromRPCUrl(env.rpcUrl);
  }
  return publicClient!;
}

function buildArgs(values?: (args: Args) => void): Args {
  const args = new Args();
  if (values) {
    values(args);
  }
  return args;
}

export async function readProfile(address?: string): Promise<Profile | null> {
  ensureEnv();
  const args = buildArgs((a) => {
    if (address) {
      a.addString(address);
    }
  });
  try {
    const { value } = await getPublicClient().readSC({
      target: env.contractAddress,
      func: 'get_profile',
      parameter: args,
    });
    return decodeProfile(value);
  } catch {
    return null;
  }
}

export async function listContacts(address?: string): Promise<Contact[]> {
  ensureEnv();
  const args = buildArgs((a) => {
    if (address) {
      a.addString(address);
    }
  });

  try {
    const { value } = await getPublicClient().readSC({
      target: env.contractAddress,
      func: 'list_contacts',
      parameter: args,
    });
    return decodeContacts(value);
  } catch {
    return [];
  }
}

export async function listConversations(
  address?: string,
): Promise<Conversation[]> {
  ensureEnv();
  const args = buildArgs((a) => {
    if (address) {
      a.addString(address);
    }
  });

  try {
    const { value } = await getPublicClient().readSC({
      target: env.contractAddress,
      func: 'list_conversations',
      parameter: args,
    });
    return decodeConversations(value);
  } catch {
    return [];
  }
}

export async function fetchConversation(
  conversationId: string,
): Promise<Conversation | null> {
  ensureEnv();
  const args = buildArgs((a) => a.addString(conversationId));
  try {
    const { value } = await getPublicClient().readSC({
      target: env.contractAddress,
      func: 'get_conversation',
      parameter: args,
    });
    return decodeConversations(value)[0] ?? null;
  } catch {
    return null;
  }
}

export async function fetchMessages(params: {
  conversationId: string;
  cursor?: number;
  limit?: number;
}): Promise<{ messages: ChatMessage[]; nextCursor: number }> {
  ensureEnv();
  const args = buildArgs((a) => {
    a.addString(params.conversationId);
    a.addU64(BigInt(params.cursor ?? 0));
    a.addU32(params.limit ?? 50);
  });

  const { value } = await getPublicClient().readSC({
    target: env.contractAddress,
    func: 'fetch_messages',
    parameter: args,
  });

  const payload = decodeMessagesPayload(value);
  return { messages: payload.messages, nextCursor: payload.nextCursor };
}

export async function registerProfile(
  provider: Provider,
  profile: ProfileFormValues & { encryptionKey: string },
) {
  ensureEnv();
  const args = buildArgs((a) => {
    a.addString(profile.username);
    a.addString(profile.avatarCid ?? '');
    a.addString(profile.bio ?? '');
    a.addString(profile.encryptionKey);
    a.addString(profile.status ?? '');
  });

  await provider.callSC({
    target: env.contractAddress,
    func: 'register_profile',
    parameter: args,
    coins: coinsAmount(),
    maxGas: env.maxGas,
  });
}

export async function addContact(
  provider: Provider,
  peerAddress: string,
  alias: string,
) {
  ensureEnv();
  const args = buildArgs((a) => {
    a.addString(peerAddress);
    a.addString(alias);
  });
  await provider.callSC({
    target: env.contractAddress,
    func: 'add_contact',
    parameter: args,
    coins: coinsAmount(),
    maxGas: env.maxGas,
  });
}

export async function createConversation(
  provider: Provider,
  draft: ConversationDraft,
): Promise<Conversation> {
  ensureEnv();
  const args = buildArgs((a) => {
    a.addString(draft.conversationId);
    a.addString(draft.title);
    a.addString(draft.avatarCid);
    a.addBool(draft.isGroup);
    a.addArray(draft.members, ArrayTypes.STRING);
  });

  await provider.callSC({
    target: env.contractAddress,
    func: 'create_conversation',
    parameter: args,
    coins: coinsAmount(),
    maxGas: env.maxGas,
  });

  const { value } = await getPublicClient().readSC({
    target: env.contractAddress,
    func: 'get_conversation',
    parameter: buildArgs((a) => a.addString(draft.conversationId)),
  });
  return decodeConversations(value)[0];
}

export async function sendMessage(
  provider: Provider,
  input: MessageDraft & {
    payloadCid: string;
    ciphertextHash: string;
    mimeType: string;
    preview: string;
  },
): Promise<string> {
  ensureEnv();
  const args = buildArgs((a) => {
    a.addString(input.conversationId);
    a.addString(input.payloadCid);
    a.addString(input.ciphertextHash);
    a.addString(input.mimeType);
    a.addString(input.preview);
    a.addString('sent');
    a.addU64(BigInt(input.expiresAt ?? 0));
  });

  const op = await provider.callSC({
    target: env.contractAddress,
    func: 'send_message',
    parameter: args,
    coins: coinsAmount(),
    maxGas: env.maxGas,
  });

  return op.id;
}

