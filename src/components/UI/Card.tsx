import { ReactNode } from 'react';

export function Card({ children }: { children: ReactNode }) {
  return (
    <div className="bg-white dark:bg-zinc-900 rounded-2xl shadow p-6">
      {children}
    </div>
  );
}