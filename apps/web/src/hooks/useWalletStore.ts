import { create } from 'zustand';
import {
  getWallets,
  Wallet,
  WalletName,
} from '@massalabs/wallet-provider';
import type { Provider } from '@massalabs/massa-web3';

type WalletSummary = {
  name: WalletName;
  enabled: boolean;
};

type WalletState = {
  wallets: WalletSummary[];
  provider?: Provider;
  walletInstance?: Wallet;
  address?: string;
  network?: string;
  status: 'idle' | 'discovering' | 'connecting' | 'connected' | 'error';
  error?: string;
  discover: () => Promise<void>;
  connect: (walletName?: WalletName) => Promise<void>;
  disconnect: () => Promise<void>;
};

export const useWalletStore = create<WalletState>((set, get) => ({
  wallets: [],
  status: 'idle',
  async discover() {
    if (typeof window === 'undefined') return;
    set({ status: 'discovering', error: undefined });
    const detected = await getWallets();
    const summaries = detected.map((wallet) => ({
      name: wallet.name(),
      enabled: wallet.enabled(),
    }));
    set({ wallets: summaries, status: 'idle' });
  },
  async connect(walletName?: WalletName) {
    if (typeof window === 'undefined') return;
    set({ status: 'connecting', error: undefined });
    const available = await getWallets();
    const wallet =
      available.find((w) => w.name() === walletName) ??
      available.find((w) => w.enabled()) ??
      available[0];

    if (!wallet) {
      set({
        status: 'error',
        error: 'No Massa-compatible wallet was detected. Install Massa Station or Bearby.',
      });
      return;
    }

    const connected = await wallet.connect();
    if (!connected) {
      set({ status: 'error', error: 'Wallet connection rejected.' });
      return;
    }

    const accounts = await wallet.accounts();
    if (!accounts.length) {
      set({ status: 'error', error: 'No accounts available in wallet.' });
      return;
    }

    const provider = accounts[0];
    const address = (provider as unknown as { address?: string }).address;
    const network = (await wallet.networkInfos())?.networkId ?? '';

    set({
      walletInstance: wallet,
      provider,
      address,
      network,
      status: 'connected',
    });
  },
  async disconnect() {
    const wallet = get().walletInstance;
    if (wallet) {
      await wallet.disconnect();
    }
    set({
      provider: undefined,
      walletInstance: undefined,
      address: undefined,
      network: undefined,
      status: 'idle',
      error: undefined,
    });
  },
}));

