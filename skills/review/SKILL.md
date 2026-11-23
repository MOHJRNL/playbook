---
name: review
description: Use before merging or committing a change, to check correctness, security and clarity of the diff.
---

# Review

Read the diff, not the whole codebase. For each changed hunk, check:

1. **Correctness**: does it do what the goal says, including empty, null and error inputs?
2. **Security**: untrusted input validated at the boundary; no secrets, tokens or personal data in code or logs.
3. **Side effects**: every caller of a changed function still works. Search for them.
4. **Tests**: new behaviour has a test; a bug fix has a test that failed before.
5. **Clarity**: names say what things are; no dead code; no speculative abstraction.

Report findings as: file:line, what is wrong, why it matters, the fix. Mark each as blocking or optional.
