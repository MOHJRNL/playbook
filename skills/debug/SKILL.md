---
name: debug
description: Use when something is broken, failing or behaving unexpectedly and the cause is not already known.
---

# Debug

1. **Reproduce** with the smallest input that fails. Record the exact error text.
2. **Form one hypothesis** about the cause, and say which evidence would disprove it.
3. **Check it** with a read, a log line or a focused test. Change nothing else yet.
4. **Fix the root cause**, not the symptom. Before editing, find every caller of the function you are about to change.
5. **Verify**: rerun the reproduction, then the nearby tests.

If three hypotheses fail, stop and report what was ruled out and what would settle it.
