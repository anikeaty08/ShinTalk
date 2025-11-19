import { NextRequest, NextResponse } from 'next/server';
import { readProfile, fetchMessages } from '@/lib/massa';

export async function GET(req: NextRequest) {
  const address = req.nextUrl.searchParams.get('address');
  if (!address) {
    return NextResponse.json(
      { error: 'address query parameter is required' },
      { status: 400 },
    );
  }

  try {
    const profile = await readProfile(address);
    const conversationId = req.nextUrl.searchParams.get('conversationId');
    let preview = null;
    if (conversationId) {
      const { messages } = await fetchMessages({
        conversationId,
        cursor: 0,
        limit: 5,
      });
      preview = messages;
    }
    return NextResponse.json({
      ok: true,
      address,
      profile,
      latestMessages: preview,
    });
  } catch (error) {
    return NextResponse.json(
      { error: 'Unable to query Massa RPC', detail: `${error}` },
      { status: 500 },
    );
  }
}

