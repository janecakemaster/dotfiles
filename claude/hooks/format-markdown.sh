#!/bin/bash
# PostToolUse hook for Write|Edit: auto-format markdown files with prettier
INPUT=$(cat)
FILE=$(echo "$INPUT" | jq -r '.tool_input.file_path // .tool_response.filePath // ""' 2>/dev/null)
echo "$FILE" | grep -qE '\.md$' && npx prettier --write "$FILE" 2>/dev/null || true
