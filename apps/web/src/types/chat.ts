export type Profile = {
  address: string;
  username: string;
  avatarCid: string;
  bio: string;
  encryptionKey: string;
  status: string;
  createdAt: number;
  updatedAt: number;
};

export type Contact = {
  owner: string;
  peer: string;
  alias: string;
  createdAt: number;
};

export type Conversation = {
  conversationId: string;
  title: string;
  creator: string;
  avatarCid: string;
  isGroup: boolean;
  members: string[];
  createdAt: number;
};

export type ChatMessage = {
  id: number;
  conversationId: string;
  sender: string;
  payloadCid: string;
  ciphertextHash: string;
  mimeType: string;
  preview: string;
  status: string;
  timestamp: number;
  expiresAt: number;
};

export type MessageBody = {
  text?: string;
  mediaCid?: string;
  mediaType?: string;
  mediaUrl?: string;
};

export type DecryptedMessage = ChatMessage & {
  body?: MessageBody;
  decryptedAt?: number;
  error?: string;
};

export type ProfileFormValues = {
  username: string;
  bio?: string;
  avatarCid?: string;
  status?: string;
};

export type ConversationDraft = {
  conversationId: string;
  title: string;
  avatarCid: string;
  isGroup: boolean;
  members: string[];
};

export type MessageDraft = {
  conversationId: string;
  content: string;
  mediaCid?: string;
  mediaType?: string;
  expiresAt?: number;
};

