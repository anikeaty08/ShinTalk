// The entry file of your WebAssembly module.
import {
  Context,
  generateEvent,
  Storage,
} from '@massalabs/massa-as-sdk';
import { Args, bytesToString, stringToBytes } from '@massalabs/as-types';
import {
  ChatMessage,
  ContactRecord,
  Conversation,
  Profile,
} from './models';

const CONTRACT_NAMESPACE = 'wavehack-chat::';
const VERSION = '1.0.0';

const VERSION_KEY = `${CONTRACT_NAMESPACE}version`;
const PROFILE_PREFIX = `${CONTRACT_NAMESPACE}profile::`;
const CONTACT_PREFIX = `${CONTRACT_NAMESPACE}contact::`;
const CONVERSATION_PREFIX = `${CONTRACT_NAMESPACE}conversation::`;
const MEMBER_INDEX_PREFIX = `${CONTRACT_NAMESPACE}member::`;
const COUNTER_PREFIX = `${CONTRACT_NAMESPACE}counter::`;
const MESSAGE_PREFIX = `${CONTRACT_NAMESPACE}message::`;

export function constructor(binaryArgs: StaticArray<u8>): void {
  assert(Context.isDeployingContract(), 'constructor: forbidden');
  const args = new Args(binaryArgs);
  const labelResult = args.nextString();
  const label = labelResult.isOk() ? labelResult.unwrap() : 'WaveHackChat';
  Storage.set<string>(VERSION_KEY, `${label}@${VERSION}`);
  generateEvent(`contract::boot::${label}`);
}

export function register_profile(binaryArgs: StaticArray<u8>): void {
  const caller = Context.caller().toString();
  const args = new Args(binaryArgs);
  const username = args
    .nextString()
    .expect('register_profile: username missing');
  const avatarCid = args
    .nextString()
    .expect('register_profile: avatarCid missing');
  const bio = args.nextString().expect('register_profile: bio missing');
  const encryptionKey = args
    .nextString()
    .expect('register_profile: encryptionKey missing');
  const status = args
    .nextString()
    .expect('register_profile: status missing');

  const existing = tryReadProfile(caller);
  const createdAt = existing ? existing.createdAt : Context.timestamp();
  const now = Context.timestamp();
  const profile = new Profile(
    caller,
    username,
    avatarCid,
    bio,
    encryptionKey,
    status,
    createdAt,
    now,
  );
  Storage.set<StaticArray<u8>>(profileKey(caller), profile.serialize());
  generateEvent(`profile::updated::${caller}`);
}

export function get_profile(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const targetResult = args.nextString();
  const target = targetResult.isOk()
    ? targetResult.unwrap()
    : Context.caller().toString();

  const profile = readProfile(target);
  return profile.serialize();
}

export function add_contact(binaryArgs: StaticArray<u8>): void {
  const owner = Context.caller().toString();
  const args = new Args(binaryArgs);
  const peer = args
    .nextString()
    .expect('add_contact: peer address missing');
  assert(peer != owner, 'add_contact: cannot add self');
  const aliasResult = args.nextString();
  const alias = aliasResult.isOk() ? aliasResult.unwrap() : '';

  const key = contactKey(owner, peer);
  assert(!Storage.has<StaticArray<u8>>(key), 'add_contact: already added');
  const record = new ContactRecord(owner, peer, alias, Context.timestamp());
  Storage.set<StaticArray<u8>>(key, record.serialize());
  generateEvent(`contact::linked::${owner}::${peer}`);
}

export function list_contacts(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const ownerRes = args.nextString();
  const owner = ownerRes.isOk()
    ? ownerRes.unwrap()
    : Context.caller().toString();
  const keys = Storage.getKeys(stringToBytes(contactPrefix(owner)));
  const contacts = new Array<ContactRecord>();

  for (let i = 0; i < keys.length; i++) {
    const keyBytes = keys[i];
    const serialized =
      Storage.get<StaticArray<u8>>(keyBytes);
    const recordArgs = new Args(serialized);
    const record = recordArgs
      .nextSerializable<ContactRecord>()
      .expect('list_contacts: corrupt contact');
    contacts.push(record);
  }

  return new Args()
    .addSerializableObjectArray<ContactRecord>(contacts)
    .serialize();
}

export function create_conversation(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const caller = Context.caller().toString();
  const args = new Args(binaryArgs);
  const conversationId = args
    .nextString()
    .expect('create_conversation: id missing');
  const title = args
    .nextString()
    .expect('create_conversation: title missing');
  const avatarCid = args
    .nextString()
    .expect('create_conversation: avatarCid missing');
  const isGroup = args
    .nextBool()
    .expect('create_conversation: missing group flag');
  let members = args
    .next<Array<string>>()
    .expect('create_conversation: members missing');

  members = ensureMembersUnique(members, caller);
  assert(
    members.length >= 2,
    'create_conversation: at least two members required',
  );

  const convoKey = conversationKey(conversationId);
  assert(
    !Storage.has<StaticArray<u8>>(convoKey),
    'create_conversation: already exists',
  );

  const conversation = new Conversation(
    conversationId,
    title,
    caller,
    avatarCid,
    isGroup,
    members,
    Context.timestamp(),
  );
  Storage.set<StaticArray<u8>>(convoKey, conversation.serialize());
  indexConversationMembers(conversation);

  generateEvent(`conversation::created::${conversationId}`);
  return conversation.serialize();
}

export function get_conversation(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const conversationId = args
    .nextString()
    .expect('get_conversation: id missing');
  const conversation = readConversation(conversationId);
  return conversation.serialize();
}

export function list_conversations(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const ownerRes = args.nextString();
  const owner = ownerRes.isOk()
    ? ownerRes.unwrap()
    : Context.caller().toString();
  const indexPrefix = memberIndexPrefix(owner);
  const keys = Storage.getKeys(stringToBytes(indexPrefix));
  const conversations = new Array<Conversation>();

  for (let i = 0; i < keys.length; i++) {
    const keyString = bytesToString(keys[i]);
    const convoId = Storage.get<string>(keyString);
    const convo = readConversation(convoId);
    conversations.push(convo);
  }

  return new Args()
    .addSerializableObjectArray<Conversation>(conversations)
    .serialize();
}

export function send_message(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const sender = Context.caller().toString();
  const args = new Args(binaryArgs);
  const conversationId = args
    .nextString()
    .expect('send_message: id missing');
  const payloadCid = args
    .nextString()
    .expect('send_message: payload missing');
  const ciphertextHash = args
    .nextString()
    .expect('send_message: cipher hash missing');
  const mimeType = args
    .nextString()
    .expect('send_message: mime missing');
  const preview = args
    .nextString()
    .expect('send_message: preview missing');
  const status = args
    .nextString()
    .expect('send_message: status missing');
  const expiresAt = args
    .nextU64()
    .expect('send_message: expires missing');

  const conversation = readConversation(conversationId);
  assert(
    conversation.members.includes(sender),
    'send_message: sender not in conversation',
  );

  const nextId = incrementCounter(conversationId);
  const message = new ChatMessage(
    nextId,
    conversationId,
    sender,
    payloadCid,
    ciphertextHash,
    mimeType,
    preview,
    status,
    Context.timestamp(),
    expiresAt,
  );

  Storage.set<StaticArray<u8>>(messageKey(conversationId, nextId), message.serialize());
  generateEvent(`message::${conversationId}::${nextId}`);
  return message.serialize();
}

export function fetch_messages(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const conversationId = args
    .nextString()
    .expect('fetch_messages: id missing');
  const cursorRes = args.nextU64();
  const cursor = cursorRes.isOk() ? cursorRes.unwrap() : 0;
  const limitRes = args.nextU32();
  const limit = limitRes.isOk() ? limitRes.unwrap() : 50;

  const conversation = readConversation(conversationId);
  const requester = Context.caller().toString();
  assert(
    conversation.members.includes(requester),
    'fetch_messages: requester not allowed',
  );

  const total = readCounter(conversationId);
  let nextCursor = cursor;
  const collected = new Array<ChatMessage>();
  let scans: u32 = 0;

  for (let i: u64 = cursor == 0 ? 1 : cursor; i <= total && scans < limit; i++) {
    const key = messageKey(conversationId, i);
    if (!Storage.has<StaticArray<u8>>(key)) {
      continue;
    }
    const serialized = Storage.get<StaticArray<u8>>(key);
    const msgArgs = new Args(serialized);
    const message = msgArgs
      .nextSerializable<ChatMessage>()
      .expect('fetch_messages: corrupt message');
    collected.push(message);
    nextCursor = i + 1;
    scans++;
  }

  const response = new Args()
    .add<u64>(cursor == 0 ? 1 : cursor)
    .add<u64>(nextCursor > total ? total + 1 : nextCursor)
    .addSerializableObjectArray<ChatMessage>(collected);

  return response.serialize();
}

function profileKey(address: string): StaticArray<u8> {
  return stringToBytes(PROFILE_PREFIX + address);
}

function contactPrefix(owner: string): string {
  return CONTACT_PREFIX + owner + '::';
}

function contactKey(owner: string, peer: string): StaticArray<u8> {
  return stringToBytes(contactPrefix(owner) + peer);
}

function conversationKey(id: string): StaticArray<u8> {
  return stringToBytes(CONVERSATION_PREFIX + id);
}

function memberIndexPrefix(address: string): string {
  return MEMBER_INDEX_PREFIX + address + '::';
}

function memberIndexKey(address: string, conversationId: string): string {
  return memberIndexPrefix(address) + conversationId;
}

function counterKey(conversationId: string): StaticArray<u8> {
  return stringToBytes(COUNTER_PREFIX + conversationId);
}

function messageKey(conversationId: string, id: u64): StaticArray<u8> {
  return stringToBytes(
    `${MESSAGE_PREFIX}${conversationId}::${id.toString()}`,
  );
}

function tryReadProfile(address: string): Profile | null {
  const key = profileKey(address);
  if (!Storage.has<StaticArray<u8>>(key)) {
    return null;
  }
  const args = new Args(Storage.get<StaticArray<u8>>(key));
  return args
    .nextSerializable<Profile>()
    .expect('profile: corrupt serialization');
}

function readProfile(address: string): Profile {
  const profile = tryReadProfile(address);
  assert(profile != null, 'profile: not found');
  return profile!;
}

function readConversation(id: string): Conversation {
  const key = conversationKey(id);
  assert(
    Storage.has<StaticArray<u8>>(key),
    'conversation: not found',
  );
  const args = new Args(Storage.get<StaticArray<u8>>(key));
  return args
    .nextSerializable<Conversation>()
    .expect('conversation: corrupt serialization');
}

function ensureMembersUnique(
  members: string[],
  caller: string,
): string[] {
  const deduped = new Array<string>();
  let callerPresent = false;
  for (let i = 0; i < members.length; i++) {
    const candidate = members[i];
    if (!deduped.includes(candidate)) {
      deduped.push(candidate);
    }
    if (candidate == caller) {
      callerPresent = true;
    }
  }
  if (!callerPresent) {
    deduped.push(caller);
  }
  return deduped;
}

function indexConversationMembers(conversation: Conversation): void {
  for (let i = 0; i < conversation.members.length; i++) {
    const member = conversation.members[i];
    Storage.set<string>(
      memberIndexKey(member, conversation.conversationId),
      conversation.conversationId,
    );
  }
}

function incrementCounter(conversationId: string): u64 {
  const current = readCounter(conversationId);
  const next = current + 1;
  Storage.set<StaticArray<u8>>(
    counterKey(conversationId),
    new Args().add<u64>(next).serialize(),
  );
  return next;
}

function readCounter(conversationId: string): u64 {
  const key = counterKey(conversationId);
  if (!Storage.has<StaticArray<u8>>(key)) {
    return 0;
  }
  const args = new Args(Storage.get<StaticArray<u8>>(key));
  return args.nextU64().expect('counter: corrupt');
}
