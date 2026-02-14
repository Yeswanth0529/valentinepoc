#!/usr/bin/env bash
set -euo pipefail

out="photos/photos.json"
tmp_file="$(mktemp)"

find photos -maxdepth 1 -type f \
  \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.jpe' -o -iname '*.png' -o -iname '*.webp' -o -iname '*.gif' -o -iname '*.avif' \) \
  | sed 's|^\./||' | sort > "$tmp_file"

if [ -s "$tmp_file" ]; then
  {
    echo "["
    awk '{ printf "  \"%s\"", $0; if (NR < total) printf ",\n"; else printf "\n" }' total="$(wc -l < "$tmp_file")" "$tmp_file"
    echo "]"
  } > "$out"
else
  echo "[]" > "$out"
fi

rm -f "$tmp_file"
echo "Wrote $out"
