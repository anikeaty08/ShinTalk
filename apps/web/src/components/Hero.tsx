export function Hero() {
  return (
    <section className="rounded-3xl bg-mesh-light p-8 text-white shadow-glass border border-white/5">
      <div className="flex flex-col gap-4 max-w-4xl">
        <p className="text-sm uppercase tracking-[0.3em] text-brand-200">
          WaveHack • Massa Buildathon
        </p>
        <h1 className="text-4xl sm:text-5xl font-semibold">
          WhatsApp-style chat, but fully on-chain and unstoppable.
        </h1>
        <p className="text-brand-100 text-lg max-w-3xl">
          Connect your Massa wallet, mint a decentralized profile, add contacts via wallet
          address or QR, and exchange end-to-end encrypted messages that live on IPFS with
          pointers stored on the Massa blockchain. No servers, no secrets, just pure DeWeb.
        </p>
        <div className="grid sm:grid-cols-3 gap-4 text-sm text-brand-100">
          {[
            'Wallet login + ASC smart contracts',
            'IPFS media storage via Web3.Storage',
            'DeWeb-ready Next.js frontend',
          ].map((item) => (
            <div
              key={item}
              className="rounded-2xl border border-white/10 bg-panel/80 px-4 py-3"
            >
              {item}
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

