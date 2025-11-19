import 'dotenv/config';
import {
  Account,
  Args,
  JsonRpcProvider,
  Mas,
  SmartContract,
} from '@massalabs/massa-web3';
import { getScByteCode } from './utils';

const byteCode = getScByteCode('build', 'main.wasm');
const label = process.env.APP_LABEL ?? 'WavehackChat';
const coins = process.env.MASSA_DEPLOY_COINS ?? '0.02';
const network = (process.env.MASSA_NETWORK ?? 'buildnet').toLowerCase();
const rpcUrl = process.env.MASSA_RPC_URL;

const account = await Account.fromEnv();
const provider = selectProvider(network, rpcUrl, account);

console.log(`Deploying ${label} to ${network}...`);

const constructorArgs = new Args().addString(label);
const contract = await SmartContract.deploy(provider, byteCode, constructorArgs, {
  coins: Mas.fromString(coins),
});

console.log('Contract deployed at:', contract.address);
console.log('Set NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS to this value.');

function selectProvider(
  networkName: string,
  url: string | undefined,
  account: Account,
) {
  if (url) {
    return JsonRpcProvider.fromRPCUrl(url, account) as JsonRpcProvider;
  }
  if (networkName === 'mainnet') {
    return JsonRpcProvider.mainnet(account);
  }
  return JsonRpcProvider.buildnet(account);
}
