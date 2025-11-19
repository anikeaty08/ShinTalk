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

#### 4.1 How to obtain the wallet keys & RPC values

1. **Install a Massa wallet (recommended: Massa Station desktop)**
   - Download from [https://station.massa.net](https://station.massa.net).
   - Create a new account or import an existing mnemonic.
   - Click **Accounts → Export private key** and enter your password. This gives you:
     - `S...` string → use as `MASSA_PRIVATE_KEY` (and also `PRIVATE_KEY` if a library expects that exact name).
     - `P...` string → use as `MASSA_PUBLIC_KEY`.
   - Copy carefully; never commit these values.

   *Alternative (Bearby extension):*
   - Open Bearby → Settings → Account → “Export secret key”.
   - That secret key is the same `S...` private key required for deployments.

2. **Where to get `JSON_RPC_URL` / `MASSA_RPC_URL`**
   - Use Massa’s public buildnet endpoint: `https://buildnet.massa.net/api/v2`.
   - For public mainnet later, switch to `https://mainnet.massa.net/api/v2`.
   - If you run a local node, point to `http://127.0.0.1:33035`.

3. **Populate `.env`**
   - Put the exported secret key line-for-line:
     ```
     MASSA_PRIVATE_KEY=Sxxxxxxxxxxxxxxxx
     PRIVATE_KEY=Sxxxxxxxxxxxxxxxx       # optional alias used by massa-web3 deploy helper
     MASSA_PUBLIC_KEY=Pxxxxxxxxxxxxxxxx
     ```
   - Double-check you’ve added `WEB3_STORAGE_TOKEN` (from the Web3.Storage dashboard) and the `MASSA_RPC_URL`.

4. **Test the env variables**
   ```powershell
   # Windows PowerShell example
   $env:MASSA_PRIVATE_KEY
   $env:MASSA_RPC_URL
   ```
   If they echo the expected strings, the deploy script will pick them up. When you run `npm run deploy`, `Account.fromEnv` searches for `PRIVATE_KEY`, `PUBLIC_KEY`, `JSON_RPC_URL_PUBLIC` or the Massa-specific names—setting both the general and Massa-prefixed versions keeps every script happy.

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

### 9.1 Optional: Deploying to Vercel (centralized fallback)

You can also publish the same Next.js build to Vercel if you need a traditional HTTPS endpoint:

1. `vercel login`
2. `cd apps/web`
3. `vercel --prod`

Remember: for WaveHack scoring, a DeWeb-hosted frontend is strongly preferred because it keeps the entire stack on-chain. Vercel is optional and should mirror the exact `.env` values (set them in the Vercel dashboard under Project Settings → Environment Variables).

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

---

### 13. Step-by-step deployment checklist

Use this as a literal “from zero to live” runbook:

1. **Prepare secrets**
   - Export wallet keys (keep them private): `MASSA_PRIVATE_KEY`, `MASSA_PUBLIC_KEY`.
   - Create `WEB3_STORAGE_TOKEN`.
   - Fill `.env` with all entries listed in Section 4.
2. **Install dependencies**
   ```bash
   npm install            # at project root
   cd contracts/chat-contract && npm install
   cd ../../apps/web && npm install
   ```
3. **Build & deploy the contract (buildnet)**
   ```bash
   cd contracts/chat-contract
   npm run build
   npm run deploy         # uses MASSA_* env vars
   ```
   Copy the printed `Contract deployed at:` address into `.env` as `NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS`.
4. **Verify ASC deployment**
   - In `massa-client`, run `sc-get datastore <address> <key>` (optional) or use `/api/status` to ensure the contract responds after your first transactions.
5. **Run the frontend locally**
   ```bash
   cd apps/web
   npm run dev
   ```
   Connect your wallet, mint a profile, add a contact, send a test message.
6. **Production build & lint**
   ```bash
   npm run lint
   npm run build
   ```
7. **Upload to DeWeb**
   ```bash
   npm install -g @massalabs/deweb-cli
   deweb-cli login
   deweb-cli upload --dir .next
   ```
   Follow the CLI prompts to bind the uploaded bundle to a `.massa` domain (or create a new domain). This is what “deploying the frontend” means: hosting the React/Next.js build itself on Massa’s decentralized web.
8. **(Optional) Vercel deploy** – only if you also want a conventional domain:
   ```bash
   vercel --prod
   ```
9. **Sanity checks**
   - `curl` the `/api/status` endpoint hosted on your DeWeb domain.
   - Open the DeWeb URL in a browser, connect the wallet, and send a message. Confirm that IPFS uploads succeed (look at the Network tab or terminal logs).

Once you complete these steps, the smart contract runs autonomously on buildnet, and the frontend is available through a `.massa` domain—meeting the WaveHack requirement for “fully on-chain” frontends. You can now iterate (update the contract, redeploy, rebuild the frontend) by repeating steps 3–8 with your changes.

---

### 14. Funding your deployer wallet (faucet steps)

Deploying on buildnet/testnet still consumes MAS. Follow this mini-playbook **before** `npm run deploy`:

1. Copy your **public address** (starts with `AU…`) from Massa Station/Bearby.
2. Join the official [Massa Discord](https://discord.gg/massa) and open the `#faucet` or `#buildnet-help` channel.
3. Paste a short request such as:  
   `Need buildnet MAS for WaveHack deployment. Address: AU1abc...`
4. Wait for a moderator or faucet bot to confirm. (Never share your `S...` private key—only the public address.)
5. Confirm the funds arrived:
   ```powershell
   massa-client wallet_info
   ```
   or check Massa Station’s balance view. Aim for ≥5 MAS.
6. Return to step 5 in this guide and run `npm run deploy`. The error “Insufficient balance” disappears once the wallet is funded.

