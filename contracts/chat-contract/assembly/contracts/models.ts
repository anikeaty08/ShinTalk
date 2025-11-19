import { Args, Result, Serializable } from '@massalabs/as-types';

export class Profile implements Serializable {
  constructor(
    public owner: string = '',
    public username: string = '',
    public avatarCid: string = '',
    public bio: string = '',
    public encryptionKey: string = '',
    public status: string = '',
    public createdAt: u64 = 0,
    public updatedAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.owner)
      .add(this.username)
      .add(this.avatarCid)
      .add(this.bio)
      .add(this.encryptionKey)
      .add(this.status)
      .add(this.createdAt)
      .add(this.updatedAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);
    this.owner = args.mustNext<string>('owner');
    this.username = args.mustNext<string>('username');
    this.avatarCid = args.mustNext<string>('avatarCid');
    this.bio = args.mustNext<string>('bio');
    this.encryptionKey = args.mustNext<string>('encryptionKey');
    this.status = args.mustNext<string>('status');
    this.createdAt = args.mustNext<u64>('createdAt');
    this.updatedAt = args.mustNext<u64>('updatedAt');
    return new Result(args.offset);
  }
}

export class ContactRecord implements Serializable {
  constructor(
    public owner: string = '',
    public peer: string = '',
    public alias: string = '',
    public createdAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.owner)
      .add(this.peer)
      .add(this.alias)
      .add(this.createdAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);
    this.owner = args.mustNext<string>('owner');
    this.peer = args.mustNext<string>('peer');
    this.alias = args.mustNext<string>('alias');
    this.createdAt = args.mustNext<u64>('createdAt');
    return new Result(args.offset);
  }
}

export class Conversation implements Serializable {
  constructor(
    public conversationId: string = '',
    public title: string = '',
    public creator: string = '',
    public avatarCid: string = '',
    public isGroup: bool = false,
    public members: string[] = [],
    public createdAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.conversationId)
      .add(this.title)
      .add(this.creator)
      .add(this.avatarCid)
      .add(this.isGroup)
      .add(this.members)
      .add(this.createdAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);
    this.conversationId = args.mustNext<string>('conversationId');
    this.title = args.mustNext<string>('title');
    this.creator = args.mustNext<string>('creator');
    this.avatarCid = args.mustNext<string>('avatarCid');
    this.isGroup = args.mustNext<bool>('isGroup');
    this.members = args.mustNext<Array<string>>('members');
    this.createdAt = args.mustNext<u64>('createdAt');
    return new Result(args.offset);
  }
}

export class ChatMessage implements Serializable {
  constructor(
    public id: u64 = 0,
    public conversationId: string = '',
    public sender: string = '',
    public payloadCid: string = '',
    public ciphertextHash: string = '',
    public mimeType: string = '',
    public preview: string = '',
    public status: string = '',
    public timestamp: u64 = 0,
    public expiresAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.id)
      .add(this.conversationId)
      .add(this.sender)
      .add(this.payloadCid)
      .add(this.ciphertextHash)
      .add(this.mimeType)
      .add(this.preview)
      .add(this.status)
      .add(this.timestamp)
      .add(this.expiresAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32): Result<i32> {
    const args = new Args(data, offset);
    this.id = args.mustNext<u64>('id');
    this.conversationId = args.mustNext<string>('conversationId');
    this.sender = args.mustNext<string>('sender');
    this.payloadCid = args.mustNext<string>('payloadCid');
    this.ciphertextHash = args.mustNext<string>('ciphertextHash');
    this.mimeType = args.mustNext<string>('mimeType');
    this.preview = args.mustNext<string>('preview');
    this.status = args.mustNext<string>('status');
    this.timestamp = args.mustNext<u64>('timestamp');
    this.expiresAt = args.mustNext<u64>('expiresAt');
    return new Result(args.offset);
  }
}

