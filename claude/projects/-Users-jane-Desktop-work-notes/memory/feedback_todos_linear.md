---
name: Todos go to Linear, not todos.md
description: When Jane uses /todo, create a Linear issue assigned to her on Hub or Mobile team instead of adding to todos.md
type: feedback
---

Jane is moving away from todos.md. When she uses /todo, create a Linear issue assigned to "me" on the appropriate team (Hub by default, Mobile if specified or obviously mobile-scoped).

**Why:** Linear is the source of truth for task tracking. Maintaining a separate todos.md is redundant.

**How to apply:**

- /todo → create Linear issue on Hub team, assigned to me, with appropriate priority
- If the todo mentions mobile, mic PRD, Micko, Maks, or is clearly mobile-scoped → use Mobile team
- Default priority: 3 (Medium) unless Jane specifies
- Still log to the ledger if the todo creation is part of a broader work log
- Don't add to todos.md
