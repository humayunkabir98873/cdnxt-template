import { ButtonHTMLAttributes } from 'react';

export function Button({ className = '', ...props }: ButtonHTMLAttributes<HTMLButtonElement>) {
  return (
    <button
      {...props}
      className={\`px-4 py-2 rounded-xl shadow-md font-medium bg-indigo-600 text-white hover:bg-indigo-700 \${className}\`}
    />
  );
}