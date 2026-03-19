#!/bin/bash
# SessionStart hook: show top high-priority todos
TODOS_FILE="${CLAUDE_PROJECT_DIR:-.}/todos.md"
if [ -f "$TODOS_FILE" ]; then
  ITEMS=$(sed -n '/^## High Priority/,/^##[^#]/{/^- /p;}' "$TODOS_FILE" | head -5 | sed 's/"/\\"/g')
  if [ -n "$ITEMS" ]; then
    ESCAPED=$(echo "$ITEMS" | awk '{printf "%s\\n", $0}')
    echo "{\"systemMessage\": \"Top todos:\\n${ESCAPED}\"}"
  fi
fi
