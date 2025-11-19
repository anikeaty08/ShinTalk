## WaveHack Chat – Builder Workflow

This document captures the entire workflow for hacking on the WaveHack WhatsApp-style chat dApp so you can reproduce the setup, verify the APIs with `curl`, and reuse the stack for other Massa projects.

---

### 1. Prerequisites

| Tool | Version / Notes |
| --- | --- |
| Node.js | ≥ 20 (recommended 22.x) |
| npm | Ships with Node ≥ 20 |
| Rust toolchain | Required for AssemblyScript toolchain bootstrap |
| Massa Station or compatible wallet | Needed to connect the frontend and to sign operations |
| Web3.Storage account | Generates the `WEB3_STORAGE_TOKEN` for IPFS uploads |

Install global deps once:

```bash
npm install -g pnpm # optional, npm works too
```

---

### 2. Repository Layout

```
wavehack-chat/
├── apps/
│   └── web/                 # Next.js 15 + Tailwind frontend hosted on DeWeb
├── contracts/
│   └── chat-contract/       # AssemblyScript ASC smart contract
├── docs/                    # Builder documentation
└── package.json             # npm workspace root
```

---

### 3. Environment Variables

Create a `.env` file at the repo root (values shown as placeholders):

```
# Frontend runtime
NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS=ASxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEXT_PUBLIC_MASSA_PUBLIC_API=https://buildnet.massa.net/api/v2
NEXT_PUBLIC_MASSA_CALL_COINS=0.01
NEXT_PUBLIC_MASSA_MAX_GAS=900000
NEXT_PUBLIC_IPFS_GATEWAY=https://w3s.link/ipfs/
NEXT_PUBLIC_DEFAULT_AVATAR=https://images.unsplash.com/photo-1506794778202-cad84cf45f1d

# Server / deployer secrets
WEB3_STORAGE_TOKEN=<token from https://web3.storage>
MASSA_PRIVATE_KEY=Sxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MASSA_PUBLIC_KEY=Pxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MASSA_RPC_URL=https://buildnet.massa.net/api/v2
MASSA_NETWORK=buildnet
```

**How to obtain the tokens**

1. **Web3.Storage** – Sign up, create an API token, copy it to `WEB3_STORAGE_TOKEN`.
2. **Massa keys** – Export your Massa Station / Bearby account keys. These are used only for local deployment utilities (frontend still connects via the wallet provider).

---

### 4. Smart Contract Workflow

```bash
cd contracts/chat-contract
npm install
npm run fmt        # optional - lints AssemblyScript
npm run test       # if you add unit tests
npm run build      # produces build/main.wasm
```

Deploy to the configured network (Buildnet by default):

```bash
npm run deploy
```

`src/deploy.ts` reads `MASSA_NETWORK` & `MASSA_RPC_URL` and outputs the deployed contract address—copy it into `NEXT_PUBLIC_CHAT_CONTRACT_ADDRESS`.

Key exported functions on-chain:

- `register_profile(string username, string avatarCid, string bio, string encryptionKey, string status)`
- `add_contact(string peerAddress, string alias)`
- `create_conversation(string id, string title, string avatarCid, bool isGroup, string[] members)`
- `send_message(string conversationId, string payloadCid, string ciphertextHash, string mimeType, string preview, string status, u64 expiresAt)`
- `fetch_messages(string conversationId, u64 cursor, u32 limit)`

---

### 5. Frontend Workflow

```bash
cd apps/web
npm install
npm run dev       # http://localhost:3000
npm run lint
npm run build
```

What happens on first load:

1. Discover available Massa wallets (Massa Station, Bearby, Snap).
2. Prompt you to mint your profile (username, avatar, bio, public encryption key stored on-chain).
3. Add contacts by wallet address or alias.
4. Spawn WhatsApp-style conversations, select them in the sidebar, and send text/images.
5. Messages are encrypted with TweetNaCl per recipient, uploaded to IPFS via Web3.Storage, and a metadata pointer (`cid + sha256`) is stored on the Massa blockchain.

---

### 6. Testing the APIs with `curl`

The Next.js app exposes helper routes so you can validate the stack directly from the terminal.

**Ping the on-chain profile API**

```bash
curl "http://localhost:3000/api/status?address=AU1YOURADDRESS"
```

**Ping the conversation preview API**

```bash
curl "http://localhost:3000/api/status?address=AU1YOURADDRESS&conversationId=chat::<id>"
```

**Upload a JSON blob to IPFS via the secured relay**

```bash
curl -X POST http://localhost:3000/api/ipfs \
  -H "Content-Type: application/json" \
  -d '{"filename":"hello.json","payload":"{\"hello\":\"massa\"}"}'
```

**Download a payload back (works for message decryption testing)**

```bash
curl "http://localhost:3000/api/ipfs?cid=<CID_FROM_PREVIOUS_STEP>"
```

These endpoints are handy for CI pipelines or WaveHack judges—they hit the same `@massalabs/massa-web3` helpers as the UI.

---

### 7. Reusing the Stack for Other Projects

- **Wallet Integration** – `apps/web/src/hooks/useWalletStore.ts` wraps `@massalabs/wallet-provider` and keeps the selected `Provider`. Drop it into new DApps to get the same connect/disconnect behavior.
- **Contract helpers** – `apps/web/src/lib/massa.ts` contains strongly-typed calls (`registerProfile`, `sendMessage`, etc.). Extend it with your own contract functions or move it into `packages/` and publish as an internal SDK.
- **Encryption + IPFS** – `apps/web/src/lib/encryption.ts` and `apps/web/src/lib/ipfs.ts` provide deterministic message envelopes + upload helpers. Replace the payload schema and reuse the upload proxy for any ASC/DeWeb project.
- **UI** – Components under `src/components` are clean Tailwind + React abstractions (Wallet panel, profile form, conversation list, chat window) with the requested light-blue palette.

---

### 8. Deployment (DeWeb-ready)

1. Build the frontend: `npm run build` inside `apps/web`.
2. Upload the contents of `apps/web/.next/static` plus `package.json` to Massa DeWeb using the [DeWeb CLI](https://docs.massa.net/docs/learn/decentralized-web).
3. Point your `.massa` domain to the uploaded bundle.

---

### 9. Troubleshooting

| Issue | Fix |
| --- | --- |
| `WEB3_STORAGE_TOKEN is not configured` | Set the token in `.env` or the upload proxy refuses writes |
| Wallet not detected | Open Massa Station / Bearby before visiting the site |
| `send_message: sender not in conversation` | Make sure you included your own wallet address when creating the conversation |
| `curl` calls fail with 500 | Check `MASSA_RPC_URL` or confirm the contract address is reachable on the selected network |

---

### 10. Next Steps

- Deploy the smart contract to Testnet or Mainnet and update the `.env`.
- Host the frontend on Massa DeWeb (bundle is static).
- Record a 2–3 minute demo showing wallet connect → profile mint → contact add → encrypted chat.

This workflow keeps everything reproducible for WaveHack submissions and future Massa builds. Happy shipping!

