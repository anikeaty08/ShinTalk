import { create } from 'zustand';
import {
  Contact,
  Conversation,
  DecryptedMessage,
  Profile,
} from '@/types/chat';

type ChatState = {
  profile?: Profile | null;
  contacts: Contact[];
  conversations: Conversation[];
  messages: Record<string, DecryptedMessage[]>;
  selectedConversationId?: string;
  loading: boolean;
  setProfile: (profile: Profile | null) => void;
  setContacts: (contacts: Contact[]) => void;
  setConversations: (conversations: Conversation[]) => void;
  selectConversation: (conversationId: string) => void;
  upsertMessages: (conversationId: string, payload: DecryptedMessage[]) => void;
  prependMessage: (conversationId: string, message: DecryptedMessage) => void;
  setLoading: (loading: boolean) => void;
  reset: () => void;
};

export const useChatStore = create<ChatState>((set) => ({
  profile: null,
  contacts: [],
  conversations: [],
  messages: {},
  selectedConversationId: undefined,
  loading: false,
  setProfile(profile) {
    set({ profile });
  },
  setContacts(contacts) {
    set({ contacts });
  },
  setConversations(conversations) {
    set({ conversations });
  },
  selectConversation(conversationId) {
    set({ selectedConversationId: conversationId });
  },
  upsertMessages(conversationId, payload) {
    set((state) => {
      const existing = state.messages[conversationId] ?? [];
      const merged = mergeMessages(existing, payload);
      return {
        messages: {
          ...state.messages,
          [conversationId]: merged,
        },
      };
    });
  },
  prependMessage(conversationId, message) {
    set((state) => {
      const existing = state.messages[conversationId] ?? [];
      const merged = mergeMessages(existing, [message]);
      return {
        messages: {
          ...state.messages,
          [conversationId]: merged,
        },
      };
    });
  },
  setLoading(loading) {
    set({ loading });
  },
  reset() {
    set({
      profile: null,
      contacts: [],
      conversations: [],
      messages: {},
      selectedConversationId: undefined,
      loading: false,
    });
  },
}));

function mergeMessages(
  existing: DecryptedMessage[],
  incoming: DecryptedMessage[],
) {
  const map = new Map<number, DecryptedMessage>();
  existing.forEach((msg) => map.set(msg.id, msg));
  incoming.forEach((msg) => map.set(msg.id, msg));
  return Array.from(map.values()).sort((a, b) => a.id - b.id);
}

