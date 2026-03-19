#!/bin/bash
# SessionStart hook: check settings.local.json for one-off bash commands
SETTINGS_FILE="${CLAUDE_PROJECT_DIR:-.}/.claude/settings.local.json"
if [ -f "$SETTINGS_FILE" ]; then
  JUNK=$(jq -r '.permissions.allow[]?' "$SETTINGS_FILE" 2>/dev/null | grep -E 'Bash\((grep -|find /|ls -la /|/Users/|2>/dev/null)' | grep -v check-settings-junk || true)
  if [ -n "$JUNK" ]; then
    COUNT=$(echo "$JUNK" | wc -l | tr -d ' ')
    echo "{\"systemMessage\": \"settings.local.json has ${COUNT} one-off bash command(s) in the allow list. Clean up when convenient.\"}"
  fi
fi
