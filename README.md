## WaveHack Chat – End-to-End Build & Deployment Guide

This document walks through **every step** needed to recreate the project from scratch, deploy the autonomous smart contract on Massa **buildnet (testnet)**, connect the React/Next.js frontend, and redeploy the UI on Massa DeWeb. Follow this if you’re starting with *zero* context.

---

### 1. What You’re Building

| Layer | Tech | Purpose |
| --- | --- | --- |
| Smart Contract | AssemblyScript via `@massalabs/massa-as-sdk` | Stores user profiles, contacts, conversation metadata, encrypted IPFS message pointers |
| Frontend | Next.js 15 + React + Tailwind CSS | WhatsApp-like dApp UI hosted on DeWeb |
| Wallet Integration | `@massalabs/wallet-provider` + `@massalabs/massa-web3` | Signs operations with Massa Station / Bearby |
| Storage | IPFS via Web3.Storage | Stores encrypted message payloads (frontends fetch with `/api/ipfs` relay) |
| Database? | **None.** The contract datastore + IPFS act as the persistent store—no centralized DB or API keys needed at runtime |

---

### 2. Global Prerequisites

```bash
# Node.js >= 20 (includes npm)
# Install AssemblyScript toolchain dependencies
npm install -g pnpm # optional

# Optional: Yarn if you prefer
npm install -g yarn
```

Also install the latest **Massa Station** or **Bearby** wallet (Chrome extension) so the frontend can connect.

---

### 3. Clone the Repository

```bash
git clone https://github.com/you/wavehack-chat.git
cd wavehack-chat
```

---

### 4. Environment Variables (`.env`)

Create `.env` at repo root with the following placeholders:

```
NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS=ASXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
NEXT_PUBLIC_MASSA_PUBLIC_API=https://buildnet.massa.net/api/v2
NEXT_PUBLIC_MASSA_CALL_COINS=0.01
NEXT_PUBLIC_MASSA_MAX_GAS=900000
NEXT_PUBLIC_IPFS_GATEWAY=https://w3s.link/ipfs/
NEXT_PUBLIC_DEFAULT_AVATAR=https://images.unsplash.com/photo-1506794778202-cad84cf45f1d

WEB3_STORAGE_TOKEN=<TOKEN_FROM_WEB3.STORAGE>
MASSA_PRIVATE_KEY=<S... FROM WALLET EXPORT>
MASSA_PUBLIC_KEY=<P... FROM WALLET EXPORT>
MASSA_RPC_URL=https://buildnet.massa.net/api/v2
MASSA_NETWORK=buildnet
APP_LABEL=WavehackChat
```

- `WEB3_STORAGE_TOKEN` – create a free account at https://web3.storage.
- Massa keys are used only by the local deploy script; the UI still connects through the user’s wallet provider.

---

### 5. Smart Contract: Build + Deploy (Buildnet/Testnet)

```bash
cd contracts/chat-contract
npm install
npm run build   # outputs build/main.wasm

# Deploy to Buildnet using env vars above
npm run deploy
```

Deployment prints something like:

```
Deploying WavehackChat to buildnet...
Contract deployed at: AS1XYZ...
```

Copy this address into `.env` as `NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS`.

---

### 6. Frontend Development Workflow

```bash
cd apps/web
npm install

# Local dev (http://localhost:3000)
npm run dev

# Quality gates
npm run lint
npm run build
```

The UI steps on first load:

1. Discover wallets (Massa Station, Bearby, MetaMask Snap if installed).
2. Ask you to mint an on-chain profile (username/avatar/bio/status) – data is stored via `register_profile`.
3. Add contacts by wallet address or alias (both saved on-chain).
4. Create conversations (1:1 or group) stored entirely on the contract.
5. Messages are encrypted (TweetNaCl), uploaded to IPFS, and only the pointer hash/CID touches the blockchain.

---

### 7. Architecture Details

```
src/
  app/page.tsx         # main composition (Hero, wallet panel, forms, chat)
  components/          # UI building blocks (glass cards, chat window, etc.)
  hooks/useWalletStore # Zustand store wrapping wallet-provider
  state/chat-store     # in-memory state synced with contract reads
  lib/
    massa.ts           # thin SDK on top of @massalabs/massa-web3
    encryption.ts      # TweetNaCl E2EE helpers
    keychain.ts        # localforage-based key storage (per user)
    ipfs.ts            # upload/download proxies via Web3.Storage
    env.ts             # runtime env helper
  app/api/ipfs         # secure upload relay (uses WEB3_STORAGE_TOKEN)
  app/api/status       # read-only route to test contract data via curl
```

**Database?**  
No centralized DB. The smart contract datastore (key-value) is the source of truth. IPFS handles message payloads. Everything else is cached client-side with Zustand.

---

### 8. Curl-Based Validation (No UI Needed)

Test that the backend pieces work even before connecting the wallet UI:

```bash
# Check profile data stored on-chain
curl "http://localhost:3000/api/status?address=AU1YOURADDRESS"

# Check a conversation’s last messages
curl "http://localhost:3000/api/status?address=AU1YOURADDRESS&conversationId=conv::<id>"

# Upload arbitrary JSON to IPFS via the secure relay
curl -X POST http://localhost:3000/api/ipfs \
  -H "Content-Type: application/json" \
  -d '{"filename":"hello.json","payload":"{\"hello\":\"massa\"}"}'

# Download payload back (works for decrypt testing)
curl "http://localhost:3000/api/ipfs?cid=<CID_FROM_PREVIOUS_STEP>"
```

---

### 9. Deploying the Frontend to Massa DeWeb

1. Build the static assets:
   ```bash
   cd apps/web
   npm run build
   ```
2. Follow the [official DeWeb CLI guide](https://docs.massa.net/docs/learn/decentralized-web):
   ```bash
   npm install -g @massalabs/deweb-cli
   deweb-cli login
   deweb-cli upload --dir .next # or the output folder recommended by CLI
   ```
3. Bind the uploaded bundle to your `.massa` domain via DeWeb DNS.

The result is a fully on-chain UI (hosted on Massa) interacting with on-chain state—no centralized infrastructure.

---

### 10. Starting a Completely New Project

If you want to fork the idea or start a different Massa dApp:

1. **Bootstrap smart contract:**
   ```bash
   npx @massalabs/sc-project-initializer init my-contract
   cd my-contract
   npm install
   ```
   Edit `assembly/contracts/main.ts` with your ASC logic.

2. **Boilerplate frontend:**
   ```bash
   npx create-next-app@latest my-massa-app --ts --tailwind --app --src-dir
   cd my-massa-app
   npm install @massalabs/massa-web3 @massalabs/wallet-provider zustand
   ```

3. **Architecture checklist:**
   - `/lib/massa.ts`: wrap contract calls with `JsonRpcProvider.readSC` / `callSC`.
   - `/hooks/useWalletStore.ts`: copy wallet logic from this project to handle connect/disconnect.
   - `/state/chat-store.ts`: replace with your domain-specific Zustand store.
   - Add `.env` placeholders for contract address, RPC endpoints, and any IPFS/ASC tokens.

4. **Deployment:**
   - `npm run build` to ensure static output is ready.
   - `deweb-cli` to push to Massa’s decentralized hosting.

By following this pattern, you can clone the setup for any Massa dApp: autonomous logic via ASC, wallet-provider for signatures, and DeWeb hosting for unstoppable frontends.

---

### 11. Testnet vs. Mainnet

This guide uses **buildnet** (the public Massa testnet):

- RPC: `https://buildnet.massa.net/api/v2`
- Wallet tokens: request from the official faucet or Discord

To promote to mainnet later:

1. Update `.env` with mainnet RPC + contract address.
2. Redeploy the ASC using `MASSA_NETWORK=mainnet`.
3. Re-upload the frontend bundle with DeWeb CLI (no other changes needed).

---

### 12. Recap

1. **Install** dependencies + wallets.
2. **Build & deploy** the ASC from `contracts/chat-contract`.
3. **Configure** `.env` (contract address, RPC, IPFS token).
4. **Run** `npm run dev` inside `apps/web` to test locally with your wallet.
5. **Verify** using the provided curl endpoints.
6. **Deploy** the static build to Massa DeWeb for a fully on-chain experience.

This workflow ensures there’s no centralized backend. Every feature—profiles, contacts, chat history, front-end hosting—is trustless and DeWeb compliant, which is exactly what WaveHack is looking for. Good luck, and feel free to duplicate these steps for any new Massa-powered project! 💧

