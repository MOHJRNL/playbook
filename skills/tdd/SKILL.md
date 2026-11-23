---
name: tdd
description: Use when adding behaviour or fixing a bug where a failing test can be written first.
---

# Test first

1. **Write one test** for the next behaviour. Run it and confirm it fails for the right reason.
2. **Write the least code** that makes it pass.
3. **Run the suite.** Everything green before the next test.
4. **Refactor** only with green tests. Remove duplication, keep names clear.
5. **Repeat** for the next behaviour.

For a bug: first a test that reproduces it, then the fix. Keep tests small and specific. Do not mock what you can run.
