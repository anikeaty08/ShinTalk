import localforage from 'localforage';
import nacl from 'tweetnacl';
import { Buffer } from 'buffer';

type StoredKeyPair = {
  address: string;
  publicKey: string;
  secretKey: string;
};

const keychain = localforage.createInstance({
  name: 'wavehack-chat',
  storeName: 'keypairs',
});

function toBase64(bytes: Uint8Array): string {
  if (typeof window === 'undefined') {
    return Buffer.from(bytes).toString('base64');
  }
  return btoa(String.fromCharCode(...bytes));
}

function fromBase64(value: string): Uint8Array {
  if (typeof window === 'undefined') {
    return new Uint8Array(Buffer.from(value, 'base64'));
  }
  const bin = atob(value);
  return Uint8Array.from(bin, (c) => c.charCodeAt(0));
}

export async function loadKeyPair(address: string): Promise<StoredKeyPair | null> {
  if (!address) return null;
  const stored = await keychain.getItem<StoredKeyPair>(address.toLowerCase());
  return stored ?? null;
}

export async function ensureKeyPair(address: string): Promise<StoredKeyPair> {
  if (!address) {
    throw new Error('Missing address for keypair generation');
  }
  const existing = await loadKeyPair(address);
  if (existing) {
    return existing;
  }
  const keyPair = nacl.box.keyPair();
  const record: StoredKeyPair = {
    address,
    publicKey: toBase64(keyPair.publicKey),
    secretKey: toBase64(keyPair.secretKey),
  };
  await keychain.setItem(address.toLowerCase(), record);
  return record;
}

export function decodeKey(base64Key: string): Uint8Array {
  return fromBase64(base64Key);
}

