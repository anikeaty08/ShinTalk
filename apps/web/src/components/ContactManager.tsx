import { useState } from 'react';
import { Contact } from '@/types/chat';

type Props = {
  contacts: Contact[];
  onAdd: (payload: { address: string; alias: string }) => Promise<void>;
  busy?: boolean;
};

export function ContactManager({ contacts, onAdd, busy }: Props) {
  const [address, setAddress] = useState('');
  const [alias, setAlias] = useState('');

  return (
    <div className="glass-panel rounded-2xl p-4 space-y-4">
      <div>
        <p className="text-xs uppercase tracking-widest text-brand-200">
          Contacts
        </p>
        <h2 className="font-semibold text-xl">Add Massa addresses</h2>
      </div>
      <div className="space-y-2">
        <input
          className="w-full rounded-xl bg-white/5 border border-white/10 px-3 py-2 text-sm focus:ring-2 focus:ring-brand-400"
          placeholder="AU1... (wallet address)"
          value={address}
          onChange={(e) => setAddress(e.target.value)}
        />
        <input
          className="w-full rounded-xl bg-white/5 border border-white/10 px-3 py-2 text-sm focus:ring-2 focus:ring-brand-400"
          placeholder="Alias (optional)"
          value={alias}
          onChange={(e) => setAlias(e.target.value)}
        />
        <button
          className="w-full rounded-full bg-white/10 text-sm py-2 hover:bg-white/20 disabled:opacity-40"
          onClick={async () => {
            if (!address) return;
            await onAdd({ address, alias });
            setAddress('');
            setAlias('');
          }}
          disabled={!address || busy}
        >
          Save contact
        </button>
      </div>
      <div className="max-h-40 overflow-y-auto chat-scroll text-sm space-y-2">
        {contacts.length === 0 && (
          <p className="text-brand-200 text-sm">
            No contacts yet. Add at least one wallet to start a chat.
          </p>
        )}
        {contacts.map((contact) => (
          <div
            key={`${contact.owner}-${contact.peer}`}
            className="border border-white/5 rounded-xl px-3 py-2"
          >
            <p className="font-medium text-white">
              {contact.alias || short(contact.peer)}
            </p>
            <p className="text-brand-200 text-xs font-mono break-all">
              {contact.peer}
            </p>
          </div>
        ))}
      </div>
    </div>
  );
}

function short(addr: string) {
  return `${addr.slice(0, 6)}…${addr.slice(-4)}`;
}

