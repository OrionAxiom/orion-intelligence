#!/bin/bash
# ORION Auto-Push Script — for orion-intelligence (PUBLIC)
# Push non-sensitive data: dashboard/, public/, briefings/, backup/raw/, backup/wiki/

REPO_DIR="/tmp/orion-intelligence"
COMMIT_MSG="${1:-[ORION] Auto-update $(date '+%Y-%m-%d %H:%M')}"

cd "$REPO_DIR" || exit 1

# Ensure sensitive folders are NOT in this repo (they go to orion-backup)
if [ -d "$REPO_DIR/leads" ] || [ -d "$REPO_DIR/logs" ] || [ -d "$REPO_DIR/audit-reports" ]; then
    echo "⚠️  Warning: Sensitive folders detected. Move them to orion-backup."
fi

if git diff --quiet && git diff --cached --quiet; then
    echo "No changes to commit."
    exit 0
fi

git add -A
git commit -m "$COMMIT_MSG"
git push origin main

echo "✅ Public push completed: $COMMIT_MSG"
