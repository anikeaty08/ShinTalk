import type { Config } from 'tailwindcss';
import { fontFamily } from 'tailwindcss/defaultTheme';

const config: Config = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        brand: {
          50: '#eff6ff',
          100: '#dbeafe',
          200: '#bfdbfe',
          300: '#93c5fd',
          400: '#60a5fa',
          500: '#3b82f6',
          600: '#2563eb',
          700: '#1d4ed8',
          800: '#1e3a8a',
          900: '#172554',
        },
        ink: '#0b1220',
        panel: '#101a2c',
        accent: '#e0f2ff',
      },
      fontFamily: {
        sans: ['"Inter"', ...fontFamily.sans],
      },
      boxShadow: {
        glass: '0 25px 50px -12px rgba(15, 23, 42, 0.45)',
      },
      backgroundImage: {
        'mesh-light':
          'radial-gradient(circle at 20% 20%, rgba(59,130,246,0.35), transparent 40%), radial-gradient(circle at 80% 0%, rgba(14,165,233,0.35), transparent 35%), radial-gradient(circle at 10% 80%, rgba(56,189,248,0.4), transparent 35%)',
      },
    },
  },
  plugins: [require('@tailwindcss/forms')],
};

export default config;
