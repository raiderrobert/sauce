# Sauce

The secret sauce. Skills that know when to slow down and think — baked with research so reflection doesn't mean starting from scratch.

## Installation

### Claude Code (via Plugin Marketplace)

```bash
/plugin marketplace add raiderrobert/sauce
/plugin install sauce@sauce
```

### Cursor

```text
/plugin-add sauce
```

### Codex

```
Fetch and follow instructions from https://raw.githubusercontent.com/raiderrobert/sauce/refs/heads/main/.codex/INSTALL.md
```

### OpenCode

```
Fetch and follow instructions from https://raw.githubusercontent.com/raiderrobert/sauce/refs/heads/main/.opencode/INSTALL.md
```

## Skills Catalog

| Skill | Description |
|-------|-------------|
| [cite-check](#cite-check) | Deep source research — find original provenance for claims, quotes, and attributions |
| [convention-mining](#convention-mining) | Extract implicit coding conventions from merged PR review history |
| [diverge-critique-converge](#diverge-critique-converge) | Generate high-quality analysis, plans, or designs by running a structured bakeoff |
| [review-with-research](#review-with-research) | Evidence-based code review that researches ecosystem best practices before judging |
| [reviewing-abstraction-boundaries](#reviewing-abstraction-boundaries) | Identify leaked implementation details in public surfaces |
| [writing-skills](#writing-skills) | Writing, creating, editing, improving, reviewing, and auditing Claude Code skills |

### cite-check

Deep source research — systematically find original sources, provenance, and attribution for a list of claims, ideas, or named concepts.

### convention-mining

Surface implicit coding conventions from merged PR review comments, then verify and harden the results. Covers two phases: mining conventions from review data, and auditing convention skills for accuracy.

### diverge-critique-converge

Generate high-quality analysis, plans, or designs by running a structured bakeoff. N agents independently produce solutions in isolated worktrees, M critics review each from orthogonal angles, then synthesize the best elements into a composite.

### review-with-research

Reviews a branch by dispatching a code-review subagent in a worktree alongside a research subagent, then synthesizes their findings into an evidence-based verdict.

### reviewing-abstraction-boundaries

Identify where internal implementation details have leaked through to the public surface of a project. Your users should never need to know or care which libraries, engines, or data structures you use internally.

### writing-skills

A skill is a reference guide that teaches future Claude instances proven techniques, patterns, or tools. This skill covers writing, creating, editing, improving, reviewing, and auditing Claude Code skills.
