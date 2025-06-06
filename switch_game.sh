#!/bin/bash
set -e

# Determine which game is currently active via state file
STATE_FILE=".game_state"
if [ ! -f "$STATE_FILE" ]; then
  echo "snake" > "$STATE_FILE"
fi
STATE=$(cat "$STATE_FILE")

if [ "$STATE" = "snake" ]; then
  cp pacman.html main.html
  echo "pacman" > "$STATE_FILE"
  COMMIT_MSG="Switch to Pacman game"
else
  cp snake.html main.html
  echo "snake" > "$STATE_FILE"
  COMMIT_MSG="Switch to Snake game"
fi

git config user.name "CI Bot"
git config user.email "ci-bot@example.com"

git add main.html "$STATE_FILE"

# Commit if there are changes
if ! git diff --cached --quiet; then
  git commit -m "$COMMIT_MSG"
fi
