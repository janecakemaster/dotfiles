#!/bin/bash
# PostToolUse hook for Edit: remind to update dave-notes.md when Dave is mentioned in ledger edits
INPUT=$(cat)
FILE=$(echo "$INPUT" | jq -r '.tool_input.file_path // ""' 2>/dev/null)
NEW=$(echo "$INPUT" | jq -r '.tool_input.new_string // ""' 2>/dev/null)
echo "$FILE" | grep -q 'ledger\.md$' && echo "$NEW" | grep -qi 'dave' && echo '{"systemMessage": "Ledger edit mentions Dave. Update dave-notes.md too."}' || true
