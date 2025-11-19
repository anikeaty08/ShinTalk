import nacl from 'tweetnacl';
import { sha256 } from 'js-sha256';
import { Buffer } from 'buffer';
import { MessageBody } from '@/types/chat';
import { decodeKey, ensureKeyPair } from './keychain';

const encoder = new TextEncoder();
const decoder = new TextDecoder();

type Recipient = {
  address: string;
  publicKey: string;
};

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

export async function encryptPayload(
  author: string,
  conversationId: string,
  body: MessageBody,
  recipients: Recipient[],
) {
  const uniqueRecipients = dedupeRecipients([
    ...recipients,
    { address: author, publicKey: (await ensureKeyPair(author)).publicKey },
  ]);

  const senderKeyPair = await ensureKeyPair(author);
  const senderSecret = decodeKey(senderKeyPair.secretKey);
  const senderPublic = decodeKey(senderKeyPair.publicKey);

  const messageBytes = encoder.encode(JSON.stringify(body));
  const envelopes: Record<string, { nonce: string; ciphertext: string; senderPublicKey: string }> = {};

  uniqueRecipients.forEach(({ address, publicKey }) => {
    const nonce = nacl.randomBytes(nacl.box.nonceLength);
    const cipher = nacl.box(
      messageBytes,
      nonce,
      decodeKey(publicKey),
      senderSecret,
    );
    envelopes[address] = {
      nonce: toBase64(nonce),
      ciphertext: toBase64(cipher),
      senderPublicKey: toBase64(senderPublic),
    };
  });

  const payload = {
    version: '1.0',
    conversationId,
    author,
    createdAt: Date.now(),
    envelopes,
  };

  const serialized = JSON.stringify(payload);
  return {
    serialized,
    checksum: sha256(serialized),
  };
}

export function decryptPayload(
  serialized: string,
  address: string,
  secretKey: string,
): MessageBody | null {
  try {
    const payload = JSON.parse(serialized) as {
      envelopes: Record<
        string,
        { nonce: string; ciphertext: string; senderPublicKey: string }
      >;
    };
    const envelope =
      payload.envelopes[address] ?? payload.envelopes[address.toUpperCase()];
    if (!envelope) {
      return null;
    }
    const shared = nacl.box.open(
      fromBase64(envelope.ciphertext),
      fromBase64(envelope.nonce),
      fromBase64(envelope.senderPublicKey),
      decodeKey(secretKey),
    );
    if (!shared) {
      return null;
    }
    const json = decoder.decode(shared);
    return JSON.parse(json);
  } catch {
    return null;
  }
}

function dedupeRecipients(recipients: Recipient[]): Recipient[] {
  const map = new Map<string, Recipient>();
  recipients.forEach((recipient) => {
    if (!recipient.address) return;
    if (!map.has(recipient.address)) {
      map.set(recipient.address, recipient);
    }
  });
  return Array.from(map.values());
}

