---
name: Proactively leverage all available plugins
description: Jane expects Claude to actively use all installed plugins/skills rather than falling back to default tools — check session plugins at start and use them throughout
type: feedback
originSessionId: 910b58da-8365-493e-9d18-f36a4226fdd5
---

Always check and use available plugins proactively rather than defaulting to built-in tools.

**Why:** Jane has multiple plugins installed (context-mode, context7, superpowers, weekend-docs, weekend-code-review, qr-upsell-debugging, session-journal, code-simplifier) and wants them actively used — not ignored in favor of raw Bash/Read/etc.

**How to apply:**

- Use **context-mode** (ctx_batch_execute, ctx_search) instead of Bash when output exceeds ~20 lines
- Use **context7** for library/framework doc lookups instead of guessing or web search
- Use **superpowers** skills before creative work (brainstorming), implementation (TDD, plans), debugging, and code review
- Use **weekend-docs** when questions involve @volley packages, platform-sdk, or API docs
- Use **weekend-code-review** before pushing PRs to check AGENTS.md/CLAUDE.md compliance
- Use **qr-upsell-debugging** when tracing URL params through VWR → hub → controller → web checkout
- Use **session-journal** to capture findings during long sessions
- Use **code-simplifier** after implementation to review changed code for quality
- At session start, note which plugins are available and keep them in mind throughout
