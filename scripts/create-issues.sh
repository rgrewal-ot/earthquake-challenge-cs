#!/usr/bin/env bash
# Creates GitHub issues in THIS repo from issues/*.md. Run once, from the repo root.
set -euo pipefail
repo=$(gh repo view --json nameWithOwner -q .nameWithOwner)
existing=$(gh issue list --state all --limit 1 --json number -q 'length')
if [ "$existing" != "0" ]; then echo "$repo already has issues, stopping to avoid duplicates."; exit 1; fi
echo "Creating issues in $repo …"
for f in issues/*.md; do
  title=$(head -1 "$f" | sed -E 's/^# #[0-9]+ //')
  labels=$(sed -n 's/^\*\*Points:\*\* //p' "$f" | head -1 | sed 's/, /,/g')
  body=$(tail -n +5 "$f")
  args=(--title "$title" --body "$body")
  if [ -n "$labels" ]; then
    IFS=',' read -ra L <<<"$labels"
    for l in "${L[@]}"; do gh label create "$l" --force >/dev/null; done
    args+=(--label "$labels")
  fi
  gh issue create "${args[@]}" >/dev/null && echo "  ✓ $title"
done
echo "Done: $(gh issue list --limit 100 --json number -q length) issues."
