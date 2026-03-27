---
name: Recap must check Linear activity
description: The /recap skill should check Linear for issues created, completed, and updated during the recap window
type: feedback
---

The /recap skill must include a Linear search step alongside GitHub, Slack, Granola, Calendar, and Notion.

**Why:** Jane tracks all work in Linear now (no more todos.md). Linear activity is a primary source of what got done.

**How to apply:** During recap Step 3 (gather missing work), add:

- `list_issues` with assignee "me", createdAt for the window start date
- `list_issues` with assignee "me", updatedAt "-P1D" (or appropriate range)
- Log any created/completed/updated issues not already in the ledger
- Note completed issues as "completed: [title]" entries
