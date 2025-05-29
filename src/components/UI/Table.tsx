export function Table({ headers, rows }: { headers: string[]; rows: string[][] }) {
  return (
    <table className="w-full table-auto border-collapse text-sm">
      <thead>
        <tr>
          {headers.map((h, i) => (
            <th key={i} className="border-b py-2 text-left font-semibold text-zinc-600 dark:text-zinc-300">
              {h}
            </th>
          ))}
        </tr>
      </thead>
      <tbody>
        {rows.map((row, i) => (
          <tr key={i} className="hover:bg-zinc-100 dark:hover:bg-zinc-800">
            {row.map((cell, j) => (
              <td key={j} className="border-b px-2 py-2">
                {cell}
              </td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
}