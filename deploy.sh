#!/usr/bin/env bash
set -euo pipefail

if ! git ls-remote origin HEAD >/dev/null 2>&1; then
  cat <<'MSG'
GitHub repository not found yet.

Create a public repository named:
  LanYin-coder.github.io

Use this exact owner/repo:
  https://github.com/new

Do not initialize it with README, license, or .gitignore. Then run ./deploy.sh again.
MSG
  exit 1
fi

git push -u origin main

echo "Published. GitHub Pages will be available at https://LanYin-coder.github.io after GitHub finishes building."
