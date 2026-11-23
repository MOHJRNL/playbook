#!/usr/bin/env bash
# Checks every skills/*/SKILL.md: front matter has name and description, the
# name matches its folder, and the file stays under 20 lines.
set -u
status=0
for f in skills/*/SKILL.md; do
  dir=$(basename "$(dirname "$f")")
  name=$(awk -F': *' '/^name:/{print $2; exit}' "$f")
  desc=$(awk -F': *' '/^description:/{print $2; exit}' "$f")
  lines=$(wc -l < "$f" | tr -d ' ')
  if [ "$name" != "$dir" ]; then echo "FAIL $f: name '$name' does not match folder '$dir'"; status=1; fi
  if [ -z "$desc" ]; then echo "FAIL $f: no description"; status=1; fi
  if [ "$lines" -gt 20 ]; then echo "FAIL $f: $lines lines (limit 20)"; status=1; fi
  [ $status -eq 0 ] && echo "ok   $f ($lines lines, name=$name)"
done
exit $status
