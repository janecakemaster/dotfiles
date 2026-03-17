#!/usr/bin/env bash
# ABOUTME: Clones Claude Code skills listed below into ~/.claude/skills/.
# ABOUTME: Run on a new machine to set up all skills.

set -euo pipefail

SKILLS_DIR="$HOME/.claude/skills"
mkdir -p "$SKILLS_DIR"

# Add skills here: "name|repo_url"
SKILLS=(
  "humanizer|https://github.com/blader/humanizer.git"
)

for entry in "${SKILLS[@]}"; do
  name="${entry%%|*}"
  repo="${entry#*|}"
  dest="$SKILLS_DIR/$name"

  if [ -d "$dest" ]; then
    echo "[$name] already installed, pulling latest..."
    git -C "$dest" pull --ff-only
  else
    echo "[$name] cloning..."
    git clone "$repo" "$dest"
  fi
done

echo "Done. Installed ${#SKILLS[@]} skill(s)."
