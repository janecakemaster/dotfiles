#!/bin/bash
# Remind Claude to use context-mode when Bash output is large
# Reads tool result from stdin JSON
INPUT=$(cat)
OUTPUT=$(echo "$INPUT" | jq -r '.tool_result.stdout // ""' 2>/dev/null)
if [ -z "$OUTPUT" ]; then
  OUTPUT=$(echo "$INPUT" | jq -r '.tool_result.output // ""' 2>/dev/null)
fi
LINE_COUNT=$(echo "$OUTPUT" | wc -l | tr -d ' ')
if [ "$LINE_COUNT" -gt 20 ]; then
  echo "Large output ($LINE_COUNT lines). Consider using context-mode tools (ctx_batch_execute, ctx_search, ctx_execute_file) to keep context window lean."
fi
