import type { Metadata } from 'next';
import { Inter } from 'next/font/google';
import './globals.css';

const inter = Inter({
  subsets: ['latin'],
  variable: '--font-inter',
  display: 'swap',
});

export const metadata: Metadata = {
  title: 'WaveHack Chat • Fully-on-chain messenger',
  description:
    'A WhatsApp-inspired, end-to-end encrypted chat dApp that runs entirely on the Massa blockchain and DeWeb.',
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={`${inter.variable} min-h-screen bg-mesh-light`}>
        {children}
      </body>
    </html>
  );
}
