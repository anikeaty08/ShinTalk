import {
  Args,
  ArrayTypes,
  DeserializedResult,
  Serializable,
} from '@massalabs/massa-web3';
import {
  ChatMessage,
  Contact,
  Conversation,
  Profile,
} from '@/types/chat';

const emptyProfile = (): Profile => ({
  address: '',
  username: '',
  avatarCid: '',
  bio: '',
  encryptionKey: '',
  status: '',
  createdAt: 0,
  updatedAt: 0,
});

class ContactWire implements Serializable<ContactWire> {
  constructor(public value: Contact = { owner: '', peer: '', alias: '', createdAt: 0 }) {}

  serialize(): Uint8Array {
    return new Uint8Array();
  }

  deserialize(data: Uint8Array, offset: number): DeserializedResult<ContactWire> {
    const args = new Args(data, offset);
    this.value = {
      owner: args.nextString(),
      peer: args.nextString(),
      alias: args.nextString(),
      createdAt: Number(args.nextU64()),
    };
    return { instance: this, offset: args.getOffset() };
  }
}

class ConversationWire implements Serializable<ConversationWire> {
  constructor(
    public value: Conversation = {
      conversationId: '',
      title: '',
      creator: '',
      avatarCid: '',
      isGroup: false,
      members: [],
      createdAt: 0,
    },
  ) {}

  serialize(): Uint8Array {
    return new Uint8Array();
  }

  deserialize(data: Uint8Array, offset: number): DeserializedResult<ConversationWire> {
    const args = new Args(data, offset);
    this.value = {
      conversationId: args.nextString(),
      title: args.nextString(),
      creator: args.nextString(),
      avatarCid: args.nextString(),
      isGroup: args.nextBool(),
      members: args.nextArray<string>(ArrayTypes.STRING),
      createdAt: Number(args.nextU64()),
    };
    return { instance: this, offset: args.getOffset() };
  }
}

class MessageWire implements Serializable<MessageWire> {
  constructor(
    public value: ChatMessage = {
      id: 0,
      conversationId: '',
      sender: '',
      payloadCid: '',
      ciphertextHash: '',
      mimeType: '',
      preview: '',
      status: '',
      timestamp: 0,
      expiresAt: 0,
    },
  ) {}

  serialize(): Uint8Array {
    return new Uint8Array();
  }

  deserialize(data: Uint8Array, offset: number): DeserializedResult<MessageWire> {
    const args = new Args(data, offset);
    this.value = {
      id: Number(args.nextU64()),
      conversationId: args.nextString(),
      sender: args.nextString(),
      payloadCid: args.nextString(),
      ciphertextHash: args.nextString(),
      mimeType: args.nextString(),
      preview: args.nextString(),
      status: args.nextString(),
      timestamp: Number(args.nextU64()),
      expiresAt: Number(args.nextU64()),
    };
    return { instance: this, offset: args.getOffset() };
  }
}

export function decodeProfile(buffer: Uint8Array): Profile {
  const args = new Args(buffer);
  return {
    address: args.nextString(),
    username: args.nextString(),
    avatarCid: args.nextString(),
    bio: args.nextString(),
    encryptionKey: args.nextString(),
    status: args.nextString(),
    createdAt: Number(args.nextU64()),
    updatedAt: Number(args.nextU64()),
  };
}

export function decodeContacts(buffer: Uint8Array): Contact[] {
  const args = new Args(buffer);
  const wires = args.nextSerializableObjectArray(ContactWire);
  return wires.map((wire) => wire.value);
}

export function decodeConversations(buffer: Uint8Array): Conversation[] {
  const args = new Args(buffer);
  const wires = args.nextSerializableObjectArray(ConversationWire);
  return wires.map((wire) => wire.value);
}

export function decodeMessagesPayload(buffer: Uint8Array): {
  cursor: number;
  nextCursor: number;
  messages: ChatMessage[];
} {
  const args = new Args(buffer);
  const cursor = Number(args.nextU64());
  const nextCursor = Number(args.nextU64());
  const wires = args.nextSerializableObjectArray(MessageWire);
  return {
    cursor,
    nextCursor,
    messages: wires.map((wire) => wire.value),
  };
}

export function emptyProfileSnapshot(): Profile {
  return emptyProfile();
}

export function decodeMessage(buffer: Uint8Array): ChatMessage {
  const args = new Args(buffer);
  const wire = args.nextSerializable(MessageWire);
  return wire.value;
}

