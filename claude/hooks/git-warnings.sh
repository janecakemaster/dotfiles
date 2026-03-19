#!/bin/bash
# Stop hook: warn about unpushed commits and uncommitted changes
MSGS=""
UNPUSHED=$(git log --branches --not --remotes --oneline 2>/dev/null | wc -l | tr -d ' ')
DIRTY=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
[ "$UNPUSHED" -gt 0 ] && MSGS="${MSGS}${UNPUSHED} unpushed commit(s). "
[ "$DIRTY" -gt 0 ] && MSGS="${MSGS}${DIRTY} uncommitted change(s). "
[ -n "$MSGS" ] && echo "{\"systemMessage\": \"Git: ${MSGS}\"}" || true
