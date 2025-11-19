import { useForm } from 'react-hook-form';
import { z } from 'zod';
import { zodResolver } from '@hookform/resolvers/zod';
import { Profile, ProfileFormValues } from '@/types/chat';

const schema = z.object({
  username: z.string().min(3, 'At least 3 characters'),
  bio: z.string().max(140, 'Keep it short').optional().or(z.literal('')),
  avatarCid: z.string().optional().or(z.literal('')),
  status: z.string().max(60).optional().or(z.literal('')),
});

type Props = {
  initialProfile?: Profile | null;
  onSubmit: (values: ProfileFormValues) => Promise<void>;
  busy?: boolean;
  defaultAvatar: string;
};

export function ProfileForm({
  initialProfile,
  onSubmit,
  busy,
  defaultAvatar,
}: Props) {
  const {
    register,
    handleSubmit,
    formState: { errors },
    setValue,
  } = useForm<ProfileFormValues>({
    resolver: zodResolver(schema),
    defaultValues: {
      username: initialProfile?.username ?? '',
      bio: initialProfile?.bio ?? '',
      avatarCid: initialProfile?.avatarCid ?? '',
      status: initialProfile?.status ?? 'Ready to chat on-chain ✨',
    },
  });

  return (
    <form
      className="glass-panel rounded-2xl p-4 space-y-4"
      onSubmit={handleSubmit(async (values) => onSubmit(values))}
    >
      <div>
        <p className="text-xs uppercase tracking-widest text-brand-200">
          Profile
        </p>
        <h2 className="font-semibold text-xl">Mint your on-chain identity</h2>
      </div>
      <div className="space-y-3 text-sm">
        <label className="space-y-1 block">
          <span>Username</span>
          <input
            className="w-full rounded-xl bg-white/5 border border-white/10 px-3 py-2 focus:ring-2 focus:ring-brand-400"
            placeholder="wavehack.gm"
            {...register('username')}
          />
          {errors.username && (
            <p className="text-red-300 text-xs">{errors.username.message}</p>
          )}
        </label>
        <label className="space-y-1 block">
          <span>Bio</span>
          <textarea
            rows={2}
            className="w-full rounded-xl bg-white/5 border border-white/10 px-3 py-2 focus:ring-2 focus:ring-brand-400"
            placeholder="End-to-end encrypted everything."
            {...register('bio')}
          />
        </label>
        <label className="space-y-1 block">
          <span>Avatar CID / URL</span>
          <div className="flex gap-2">
            <input
              className="flex-1 rounded-xl bg-white/5 border border-white/10 px-3 py-2 focus:ring-2 focus:ring-brand-400"
              placeholder="ipfs://..."
              {...register('avatarCid')}
            />
            <button
              type="button"
              className="px-3 py-2 rounded-xl border border-white/10 text-xs"
              onClick={() => setValue('avatarCid', defaultAvatar, { shouldDirty: true })}
            >
              Use default
            </button>
          </div>
        </label>
        <label className="space-y-1 block">
          <span>Status</span>
          <input
            className="w-full rounded-xl bg-white/5 border border-white/10 px-3 py-2 focus:ring-2 focus:ring-brand-400"
            placeholder="Online"
            {...register('status')}
          />
        </label>
      </div>
      <button
        type="submit"
        className="w-full rounded-full bg-brand-500 py-2 text-sm font-medium hover:bg-brand-400 disabled:opacity-50"
        disabled={busy}
      >
        {initialProfile ? 'Update profile' : 'Create profile'}
      </button>
    </form>
  );
}

