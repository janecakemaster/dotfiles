---
name: Unified Cross-Platform Subscription Initiative
description: Hub-led initiative to unify web checkout and implement Stable Account ID for cross-platform subscriptions. Hub owns client-side, depends on Platform for backend.
type: project
---

Hub (Jane + Shriya) is driving unified cross-platform subscription. Hub wants to own Stable Account ID implementation rather than wait for Platform Services to execute in Q3.

**Why:** Current state has two separate web checkouts (Roku off-platform + multiplatform) with different Stripe products, platform-locked subscriptions, and $201K/month in untracked ad spend.

**How to apply:**
- Phase 0 (checkout unification) is Hub-autonomous, no Platform dependency
- Phase 1+ (Stable ID, entitlements) requires Platform backend work in platform-api
- Roku off-platform checkout already proves the ad → web → QR pair pattern — extend, don't reinvent
- FireTV Weekend Login (Q2 goal) overlaps heavily with Stable ID — should be unified
- Platform reorg happening 3/20 (Alex's last day) — timing matters for coordinating with Harsh
- Legal/BD review of platform distribution agreements gates the cross-platform entitlement phase
- Tech assessment written to: unified-subscription-tech-assessment.md
