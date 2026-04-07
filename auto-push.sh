#!/bin/bash
# ORION Auto-Push Script
# 每個 cron job 完成後自動執行

REPO_DIR="/tmp/orion-intelligence"
COMMIT_MSG="$1"

if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="[ORION] Auto-update $(date '+%Y-%m-%d %H:%M')"
fi

cd "$REPO_DIR" || exit 1

# Check if there are changes
if git diff --quiet && git diff --cached --quiet; then
    echo "No changes to commit."
    exit 0
fi

# Add all changes
git add -A

# Commit with message
git commit -m "$COMMIT_MSG"

# Push to GitHub
git push origin master

echo "✅ Auto-push completed: $COMMIT_MSG"
