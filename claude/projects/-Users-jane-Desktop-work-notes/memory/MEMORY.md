# Claude Memory - Work Notes

## Key Context

- Company rebranded from Volley to **Weekend** on Feb 23, 2026
- Jane is EM of Hub team at Weekend (formerly Volley) since Sept 2025
- **Beena left the company on 2/25/2026.** As of 2/25 (retroactive to 1/5): Jane reports to Dave (VP Eng)
- Kevin K now rolls up to Jane (retroactive to 1/5)
- **Hub team staffing (pending reorg 3/20)**: Kevin K (tech lead), Yoav — 2 confirmed Hub reports. Shane Austrie TBD — Alex raised performance concerns, Jane has 1-1 with Shane on 3/19 to form own assessment. Yoav is full-time (40hr/wk) but in Canary Islands timezone — overlap with US team ends ~2pm. Jane moonlights IC work to fill gaps. Dana left 2026-03-03. **1 open req remaining** (growth engineer). Galactic contractors (Laci, Bence) maintain lets-party/Roku checkout.
- **Mobile team**: Micko (from Platform Foundation) reports to Jane but under a separate "Mobile" team, not Hub. Greeshma confirmed going to Platform.
- **Alex (EM, Platform Foundation) leaves 2026-03-20.** Platform reorg happens same day — Foundation absorbed into Platform Services (becomes "Platform"). Tyler, Liz, Shane, Lior move to Harsh's team.
- [project_unified_subscription.md](project_unified_subscription.md) - Hub driving unified cross-platform subscription + Stable Account ID
- Goal: Stay at least 1 year as EM, 2 years at Weekend total for resume

## Lessons Learned

### Meeting Communication

- Frame concerns as questions, not statements: "Do we know X?" not "X is a problem"
- Raise risks in writing (Slack, Linear, docs) BEFORE meetings so there's a paper trail
- Use format: risk + impact + recommendation + decision needed + timeline
- Let others surface issues when possible

### People Patterns

- **Kevin K**: Stepping up well as tech lead. Deferred to Dana more than he realized — eager for more responsibility. Career goal: wants to see someone else successfully promoted to L5 and not get fired.

### Interview Feedback Writing Voice

- Lead with assessment, then evidence bullets underneath
- Direct and blunt - state gaps plainly, no hedging ("did not mention X", not "seemed to have difficulty with X")
- Call out open questions honestly ("was ambiguous whether TC led this or was handed a spec")
- Use emdashes sparingly
- Lowercase, casual tone in summary lines - sharp observer notes, not formal report
- Technically specific without over-explaining
- No softening language (no "perhaps", "it seems like", "could potentially")
- Never use gendered pronouns — always refer to the candidate as "TC" (the candidate)
- Never mention candidate by name in the feedback body — always "TC"
- [feedback_interview_format.md](feedback_interview_format.md) - formatting and structure rules for interview feedback files

### Workflow Preferences

- When Jane provides a Notion link (via /log, adding to contributions, etc.), always update `notion-contributions.md` with the new or updated doc entry following the existing format.
- Always save interview feedback to the `interviews/` folder — don't ask, just do it.
- When logging entries about Dave (manager, VP Eng), also update the running doc at `dave-notes.md` with relevant content.
- **Bash commands**: Never chain commands with `&&` or use `$()` subshells — these break auto-approval pattern matching. Run `cd` separately first, then subsequent commands as separate tool calls.

### Scope Management

- **Never add scope** to anything Jane is working on. If something seems like it could be added, always call it out before proceeding rather than just including it.

## Links

- [beena-situation.md](beena-situation.md) - detailed documentation (historical — Beena left 2/25/2026)
- [feedback_rca_voice.md](feedback_rca_voice.md) - Jane's RCA writing voice: factual, direct, systemic questions, casual eng language
- [feedback_ashby_transcripts.md](feedback_ashby_transcripts.md) - use Ashby transcripts for interview feedback, not Granola (more accurate, Granola truncates)
- [feedback_settings_cleanup.md](feedback_settings_cleanup.md) - proactively clean settings.local.json when one-off commands accumulate
