import { WalletName } from '@massalabs/wallet-provider';

type Props = {
  status: string;
  address?: string;
  network?: string;
  wallets: { name: WalletName; enabled: boolean }[];
  onConnect: (wallet?: WalletName) => void;
  onDisconnect: () => void;
};

export function WalletPanel({
  status,
  address,
  network,
  wallets,
  onConnect,
  onDisconnect,
}: Props) {
  const connected = status === 'connected' && Boolean(address);
  return (
    <div className="glass-panel rounded-2xl p-4 space-y-4">
      <div>
        <p className="text-xs uppercase tracking-widest text-brand-200">
          Wallet
        </p>
        <h2 className="font-semibold text-xl">Connect Massa wallet</h2>
      </div>
      <div className="text-sm text-brand-100 space-y-1">
        <p>Status: <span className="text-white font-medium capitalize">{status}</span></p>
        {connected && (
          <>
            <p>
              Address:{' '}
              <span className="font-mono text-white">
                {shortAddress(address!)}
              </span>
            </p>
            <p>Network: <span className="text-white">{network ?? 'Unknown'}</span></p>
          </>
        )}
      </div>
      <div className="flex flex-wrap gap-2">
        {connected ? (
          <button
            className="px-4 py-2 rounded-full bg-white/10 hover:bg-white/20 text-white text-sm"
            onClick={onDisconnect}
          >
            Disconnect
          </button>
        ) : (
          wallets.map((wallet) => (
            <button
              key={wallet.name}
              className="px-4 py-2 rounded-full bg-brand-500 text-white text-sm hover:bg-brand-400 disabled:opacity-40"
              disabled={!wallet.enabled}
              onClick={() => onConnect(wallet.name)}
            >
              {wallet.name}
            </button>
          ))
        )}
        {!wallets.length && !connected && (
          <p className="text-xs text-brand-200">
            Install Massa Station or Bearby wallet to continue.
          </p>
        )}
      </div>
    </div>
  );
}

function shortAddress(addr: string) {
  return `${addr.slice(0, 6)}…${addr.slice(-4)}`;
}

