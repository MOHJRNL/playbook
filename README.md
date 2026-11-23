# Playbook: four workflow skills for AI coding agents

![Claude Code plugin](https://img.shields.io/badge/Claude%20Code-plugin-D97757)
![Agent skills](https://img.shields.io/badge/agent%20skills-SKILL.md-informational)
![License: PolyForm Noncommercial](https://img.shields.io/badge/license-PolyForm%20Noncommercial%201.0.0-blue)
![Version](https://img.shields.io/badge/version-0.1.0-informational)

> **In short:** Playbook is four short workflow skills (`plan`, `debug`, `tdd`, `review`) for AI coding agents. Each is a Markdown `SKILL.md` under 20 lines. In Claude Code they load only when you use them, so they add nothing to every session. The skill text is plain Markdown, so you can reuse it in other agents.

**Keywords:** AI coding agent skills, SKILL.md, Claude Code skills, debugging workflow, test-driven development prompt, code review checklist, planning prompt, lightweight agent workflow, Superpowers alternative.

---

## The skills

| Skill | Use it when |
| --- | --- |
| `plan` | A task has several steps or unclear scope. Writes a plan of under 15 lines before any code. |
| `debug` | Something is broken and the cause isn't known. Reproduce, hypothesise, verify, fix the root cause. |
| `tdd` | Adding behaviour or fixing a bug. Write a failing test first. |
| `review` | Checking a diff before merging: correctness, security, side effects, tests, clarity. |

## Why it's light

- **No hooks.** At session start only the four short skill descriptions load (about 145 tokens in total). Each skill's full text loads only when you use it.
- **Loaded on use.** A skill's text enters the context only when the skill is used.
- **Under 20 lines each.**

## Install

### Claude Code (recommended)

```text
/plugin install playbook --marketplace MOHJRNL/playbook
```

Or from a shell:

```bash
claude plugin install playbook --marketplace MOHJRNL/playbook
```

Desktop app: **+** next to the prompt box, then **Plugins**, **Add marketplace** with `MOHJRNL/playbook`, then **Add plugin**.

Use a skill by name, for example "use the debug skill on this failing test".

### Codex (OpenAI)

Codex reads project instructions from `AGENTS.md`. Copy the body of a `SKILL.md` (everything below its front matter) into `AGENTS.md` under a heading, for example `## Debug`. Codex loads the file for the whole project, so keep only the skills you use.

### Gemini CLI

Gemini CLI reads `GEMINI.md`. Copy the skill bodies the same way.

### OpenCode

OpenCode reads project instructions from `AGENTS.md` in the project. Copy the skill bodies there.

### Grok

I haven't verified an install path for Grok. If your Grok client accepts custom or system instructions, paste the skill bodies there.

### Any other agent

The skill files are plain Markdown. Any agent or chat tool that accepts instructions can use them: paste the text where the tool takes instructions.

## FAQ

**Do these replace Superpowers?** They cover the four workflows most people use from it: planning, debugging, test-first work and review. They don't reproduce its full library or its automatic triggering.

**Why no hooks?** Hooks add text to every tool call. Skills keep the per-session cost to the descriptions alone: about 145 tokens for all four. The full text of a skill loads only when you use it.

## Development

```bash
claude plugin validate ./
./scripts/check-skills.sh   # front matter, folder names and length of each skill
```

## Test proof

A recorded test run on a fresh clone: see [TEST-PROOF.md](TEST-PROOF.md).

## License and commercial use

Free to use, copy and modify for non-commercial purposes, under the PolyForm Noncommercial License 1.0.0 (see `LICENSE`). For commercial use, contact the author for a separate license.
