---
name: Keep settings.local.json clean
description: When one-off bash commands get auto-added to permissions, proactively clean them up rather than waiting for Jane to ask
type: feedback
---

One-off bash commands (verbose grep/find with specific paths) accumulate in .claude/settings.local.json when Jane approves "always allow" during sessions. This is a recurring cleanup task.

**Why:** The file gets cluttered with specific commands that aren't reusable patterns, and the colon syntax (`gh:*`) is wrong — should be space (`gh *`).

**How to apply:** At the end of sessions or during recaps, check if settings.local.json has accumulated junk. Clean it proactively without being asked. Use broad patterns (`Bash(gh *)`) not specific commands. Group by category (bash, MCP tools, etc.).
