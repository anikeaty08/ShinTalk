import { NextRequest, NextResponse } from 'next/server';
import { Web3Storage, File } from 'web3.storage';
import { env } from '@/lib/env';

const token = process.env.WEB3_STORAGE_TOKEN;

export async function POST(req: NextRequest) {
  if (!token) {
    return NextResponse.json(
      { error: 'WEB3_STORAGE_TOKEN is not configured.' },
      { status: 500 },
    );
  }

  const client = new Web3Storage({ token });
  const contentType = req.headers.get('content-type') ?? '';
  let files: File[] = [];

  if (contentType.includes('multipart/form-data')) {
    const formData = await req.formData();
    const file = formData.get('file');
    const filename = (formData.get('filename') as string) || 'upload.bin';
    const mimeType =
      (formData.get('mimeType') as string) || 'application/octet-stream';

    if (!(file instanceof Blob)) {
      return NextResponse.json(
        { error: 'Invalid file payload' },
        { status: 400 },
      );
    }

    files = [
      new File([file], filename, {
        type: mimeType,
      }),
    ];
  } else {
    const body = await req.json();
    const payload = body.payload ?? '';
    const filename = body.filename ?? 'payload.json';
    const mimeType = body.mimeType ?? 'application/json';
    files = [
      new File([payload], filename, {
        type: mimeType,
      }),
    ];
  }

  const cid = await client.put(files, { wrapWithDirectory: false });
  return NextResponse.json({ cid });
}

export async function GET(req: NextRequest) {
  const cid = req.nextUrl.searchParams.get('cid');
  if (!cid) {
    return NextResponse.json({ error: 'cid query parameter is required.' }, { status: 400 });
  }
  const gateway = env.ipfsGateway.endsWith('/')
    ? env.ipfsGateway
    : `${env.ipfsGateway}/`;
  const target = cid.startsWith('http') ? cid : `${gateway}${cid}`;
  const response = await fetch(target);
  if (!response.ok) {
    return NextResponse.json({ error: 'Unable to fetch IPFS content.' }, { status: 502 });
  }
  const body = await response.text();
  return new NextResponse(body, {
    status: 200,
    headers: {
      'Content-Type': response.headers.get('Content-Type') ?? 'application/json',
      'Cache-Control': 'public, max-age=60',
    },
  });
}
