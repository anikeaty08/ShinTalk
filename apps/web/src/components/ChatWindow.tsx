import { useRef, useEffect, useState, FormEvent } from 'react';
import Image from 'next/image';
import {
  Conversation,
  DecryptedMessage,
  MessageBody,
} from '@/types/chat';
import { resolveIpfs } from '@/lib/ipfs';

type Props = {
  conversation?: Conversation;
  messages: DecryptedMessage[];
  selfAddress?: string;
  onSend: (payload: { text: string; file?: File }) => Promise<void>;
  busy?: boolean;
};

export function ChatWindow({
  conversation,
  messages,
  selfAddress,
  onSend,
  busy,
}: Props) {
  const [text, setText] = useState('');
  const [file, setFile] = useState<File | undefined>();
  const listRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    listRef.current?.scrollTo({
      top: listRef.current.scrollHeight,
      behavior: 'smooth',
    });
  }, [messages, conversation?.conversationId]);

  if (!conversation) {
    return (
      <div className="flex flex-col items-center justify-center h-full text-center text-brand-100">
        <p className="text-lg font-semibold">Select a chat to get started</p>
        <p className="text-sm">Your encrypted history will appear here.</p>
      </div>
    );
  }

  return (
    <div className="h-full flex flex-col">
      <div className="pb-4 border-b border-white/5">
        <p className="font-semibold text-xl">
          {conversation.title || conversation.conversationId}
        </p>
        <p className="text-xs text-brand-200">
          {conversation.members.length} participant{conversation.members.length > 1 ? 's' : ''}
        </p>
      </div>
      <div
        ref={listRef}
        className="flex-1 overflow-y-auto chat-scroll py-4 space-y-3"
      >
        {messages.map((message) => (
          <MessageBubble
            key={message.id}
            message={message}
            isSelf={message.sender === selfAddress}
          />
        ))}
      </div>
      <form
        className="pt-4 border-t border-white/5 space-y-2"
        onSubmit={async (event: FormEvent) => {
          event.preventDefault();
          if (!text && !file) return;
          await onSend({ text, file });
          setText('');
          setFile(undefined);
        }}
      >
        <textarea
          rows={3}
          className="w-full rounded-2xl bg-white/5 border border-white/10 px-3 py-2 focus:ring-2 focus:ring-brand-400"
          placeholder="Type an encrypted message..."
          value={text}
          onChange={(e) => setText(e.target.value)}
        />
        <div className="flex items-center justify-between gap-3 text-sm">
          <label className="flex items-center gap-2 text-brand-200 cursor-pointer">
            <input
              type="file"
              className="hidden"
              accept="image/*"
              onChange={(e) => {
                const nextFile = e.target.files?.[0];
                setFile(nextFile ?? undefined);
              }}
            />
            <span className="rounded-full border border-dashed border-white/20 px-3 py-1">
              {file ? file.name : 'Attach image'}
            </span>
          </label>
          <button
            type="submit"
            className="rounded-full bg-brand-500 text-white px-5 py-2 font-medium hover:bg-brand-400 disabled:opacity-40"
            disabled={busy}
          >
            Send
          </button>
        </div>
      </form>
    </div>
  );
}

function MessageBubble({
  message,
  isSelf,
}: {
  message: DecryptedMessage;
  isSelf: boolean;
}) {
  const body: MessageBody | undefined = message.body;
  const mediaUrl = body?.mediaCid ? resolveIpfs(body.mediaCid) : undefined;
  return (
    <div className={`flex ${isSelf ? 'justify-end' : 'justify-start'}`}>
      <div
        className={`max-w-lg rounded-2xl px-4 py-3 border ${
          isSelf
            ? 'bg-brand-500/20 border-brand-300 text-white'
            : 'bg-white/5 border-white/10 text-brand-100'
        }`}
      >
        {body?.text && <p className="whitespace-pre-wrap">{body.text}</p>}
        {mediaUrl && (
          <div className="mt-2 rounded-xl overflow-hidden border border-white/10">
            <Image
              src={mediaUrl}
              alt="attachment"
              width={320}
              height={220}
              className="object-cover"
            />
          </div>
        )}
        <p className="text-xs text-brand-200 mt-1">
          {new Date(message.timestamp).toLocaleTimeString()}
        </p>
      </div>
    </div>
  );
}

