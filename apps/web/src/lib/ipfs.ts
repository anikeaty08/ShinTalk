import { env } from './env';

type UploadResponse = {
  cid: string;
};

export async function uploadJson(payload: string, filename = 'message.json') {
  const res = await fetch('/api/ipfs', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ payload, filename, mimeType: 'application/json' }),
  });
  if (!res.ok) {
    throw new Error('Failed to upload payload to IPFS');
  }
  const data = (await res.json()) as UploadResponse;
  return data.cid;
}

export async function uploadFile(file: File) {
  const formData = new FormData();
  formData.append('file', file);
  formData.append('filename', file.name);
  formData.append('mimeType', file.type);

  const res = await fetch('/api/ipfs', {
    method: 'POST',
    body: formData,
  });
  if (!res.ok) {
    throw new Error('Failed to upload file to IPFS');
  }
  const data = (await res.json()) as UploadResponse;
  return data.cid;
}

export function resolveIpfs(cid?: string) {
  if (!cid) return '';
  const gateway = env.ipfsGateway.endsWith('/')
    ? env.ipfsGateway
    : `${env.ipfsGateway}/`;
  if (cid.startsWith('http')) {
    return cid;
  }
  return `${gateway}${cid}`;
}

