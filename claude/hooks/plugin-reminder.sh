#!/bin/bash
# Remind Claude about available plugins and skills at session start
cat <<'REMINDER'
Available plugins and when to use them:
- weekend-docs: @volley package docs, API docs, platform-sdk questions
- weekend-code-review: Before pushing PRs — checks AGENTS.md/CLAUDE.md compliance
- qr-upsell-debugging: Trace URL params through VWR → hub → controller → web checkout
- session-journal: Capture findings during long sessions, compile to Notion
- context-mode: Use ctx_batch_execute/ctx_search instead of Bash for large output (>20 lines)
- context7: Library documentation lookup (React, Vite, etc.)
- superpowers: Brainstorming, TDD, debugging, plan writing
- code-simplifier: Review recently changed code for quality
REMINDER
