const DEFAULT_RPC = 'https://buildnet.massa.net/api/v2';
const DEFAULT_GATEWAY = 'https://w3s.link/ipfs/';
const DEFAULT_AVATAR =
  'https://images.unsplash.com/photo-1544723795-3fb6469f5b39';

export const env = {
  contractAddress: process.env.NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS ?? '',
  rpcUrl: process.env.NEXT_PUBLIC_MASSA_PUBLIC_API ?? DEFAULT_RPC,
  callCoins: process.env.NEXT_PUBLIC_MASSA_CALL_COINS ?? '0.01',
  maxGas: BigInt(process.env.NEXT_PUBLIC_MASSA_MAX_GAS ?? '900000'),
  ipfsGateway: process.env.NEXT_PUBLIC_IPFS_GATEWAY ?? DEFAULT_GATEWAY,
  defaultAvatar: process.env.NEXT_PUBLIC_DEFAULT_AVATAR ?? DEFAULT_AVATAR,
};

export function ensureEnv() {
  if (!env.contractAddress) {
    throw new Error(
      'NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS is not defined. Set it in your .env file.',
    );
  }
}

