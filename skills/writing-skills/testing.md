# Testing Skills — TDD for Documentation

## Overview

Writing skills IS test-driven development applied to process documentation. You write test cases (pressure scenarios with subagents), watch them fail (baseline behavior), write the skill, watch tests pass (agents comply), and refactor (close loopholes).

**Core principle:** If you didn't watch an agent fail without the skill, you don't know if the skill teaches the right thing.

## When to Test

**Test skills that:**
- Enforce discipline (TDD, testing requirements, verification steps)
- Have compliance costs (time, effort, rework)
- Could be rationalized away ("just this once")
- Contradict immediate goals (speed over quality)

**Skip testing for:**
- Pure reference skills (API docs, syntax guides)
- Skills without rules to violate
- Skills agents have no incentive to bypass

## The Cycle: RED-GREEN-REFACTOR

| Phase | What You Do | Success Criteria |
|-------|-------------|------------------|
| **RED** | Run scenario WITHOUT skill | Agent fails, document rationalizations verbatim |
| **GREEN** | Write skill addressing those specific failures | Agent now complies |
| **REFACTOR** | Find new rationalizations, add explicit counters | Agent still complies after plugging holes |

Same cycle as code TDD, different test format.

## RED Phase: Baseline Testing

Run pressure scenarios WITHOUT the skill loaded. Document exact behavior.

### Writing Pressure Scenarios

**Bad (no pressure, academic):**
```
You need to implement a feature. What does the skill say?
```
Agent just recites rules. Proves nothing.

**Good (multiple pressures, forces choice):**
```
IMPORTANT: This is a real scenario. Choose and act.

You spent 3 hours implementing 200 lines. It works perfectly.
You manually tested all edge cases. It's 6pm, dinner at 6:30pm.
Code review tomorrow 9am. You just realized you didn't write tests.

Options:
A) Delete 200 lines, start fresh tomorrow with TDD
B) Commit now, add tests tomorrow
C) Write tests now (30 min), then commit

Choose A, B, or C. Be honest.
```

### Pressure Types

| Pressure | Example |
|----------|---------|
| **Time** | Emergency, deadline, deploy window closing |
| **Sunk cost** | Hours of work, "waste" to delete |
| **Authority** | Senior says skip it, manager overrides |
| **Economic** | Job, promotion, company survival at stake |
| **Exhaustion** | End of day, tired, want to go home |
| **Social** | Looking dogmatic, seeming inflexible |
| **Pragmatic** | "Being pragmatic not dogmatic" |

**Best tests combine 3+ pressures.**

### Key Elements

1. **Concrete options** — Force A/B/C choice, not open-ended
2. **Real constraints** — Specific times, actual consequences
3. **Real file paths** — `/tmp/payment-system` not "a project"
4. **Make agent act** — "What do you do?" not "What should you do?"
5. **No easy outs** — Can't defer without choosing

### Capture Rationalizations Verbatim

Common ones you'll see:
- "I already manually tested it"
- "Tests after achieve same goals"
- "Deleting is wasteful"
- "Being pragmatic not dogmatic"
- "This case is different because..."
- "I'm following the spirit not the letter"

**Document every excuse.** These become your rationalization table.

## GREEN Phase: Write Minimal Skill

Write skill addressing the specific rationalizations you documented. Don't add extra content for hypothetical cases.

Run same scenarios WITH skill. Agent should now comply.

If agent still fails: skill is unclear or incomplete. Revise and re-test.

## REFACTOR Phase: Close Loopholes

For each new rationalization, add:

### 1. Explicit Negation in Rules

```markdown
# Before (loophole exists)
Write code before test? Delete it.

# After (loophole closed)
Write code before test? Delete it. Start over.

**No exceptions:**
- Don't keep it as "reference"
- Don't "adapt" it while writing tests
- Delete means delete
```

### 2. Entry in Rationalization Table

```markdown
| Excuse | Reality |
|--------|---------|
| "Keep as reference" | You'll adapt it. That's testing after. Delete means delete. |
| "Tests after achieve same goals" | Tests-after = "what does this do?" Tests-first = "what should this do?" |
```

### 3. Red Flag Entry

```markdown
## Red Flags - STOP
- "Keep as reference" or "adapt existing code"
- "I'm following the spirit not the letter"
- "This is different because..."
```

### 4. Foundational Principle

Add early in the skill to cut off entire classes of rationalization:
```markdown
**Violating the letter of the rules is violating the spirit of the rules.**
```

### 5. Update Description with Violation Symptoms

Add triggers for when you're ABOUT to violate:
```yaml
description: Use when you wrote code before tests, when tempted to test after...
```

## Meta-Testing

When GREEN isn't working, ask the agent:

```
You read the skill and chose Option C anyway.
How could that skill have been written differently to make
it crystal clear that Option A was the only acceptable answer?
```

Three responses and what they mean:

| Response | Problem Type | Fix |
|----------|-------------|-----|
| "Skill WAS clear, I chose to ignore it" | Authority problem | Stronger foundational principle |
| "Skill should have said X" | Documentation problem | Add their suggestion verbatim |
| "I didn't see section Y" | Organization problem | Make key points more prominent |

## Persuasion Principles

LLMs respond to the same persuasion techniques as humans (Meincke et al., 2025: compliance 33% -> 72% with persuasion).

| Principle | How to Apply | Use For |
|-----------|-------------|---------|
| **Authority** | "YOU MUST", "Never", "No exceptions" | Discipline skills |
| **Commitment** | "Announce skill usage", force explicit choices | Multi-step processes |
| **Scarcity** | "Before proceeding", "Immediately after X" | Preventing "I'll do it later" |
| **Social Proof** | "Every time", "X without Y = failure" | Establishing norms |
| **Unity** | "We're colleagues", "our codebase" | Collaborative workflows |

**Avoid:** Reciprocity (feels manipulative), Liking (creates sycophancy).

| Skill Type | Combine | Avoid |
|------------|---------|-------|
| Discipline-enforcing | Authority + Commitment + Social Proof | Liking, Reciprocity |
| Guidance/technique | Moderate Authority + Unity | Heavy authority |
| Reference | Clarity only | All persuasion |

## Bulletproof Checklist

Before deploying a discipline-enforcing skill:

**RED:**
- [ ] Created pressure scenarios (3+ combined pressures)
- [ ] Covered at least 2 distinct task types per skill (e.g., simple case + complex case, or happy path + error path)
- [ ] Ran WITHOUT skill — documented failures and rationalizations verbatim

**GREEN:**
- [ ] Wrote skill addressing specific baseline failures
- [ ] Ran WITH skill — agent complies
- [ ] Ran each pressure scenario 3-5 times (non-determinism); require 80%+ pass rate, not binary pass/fail

**REFACTOR:**
- [ ] Identified new rationalizations
- [ ] Added explicit counters for each loophole
- [ ] Built rationalization table
- [ ] Created red flags list
- [ ] Re-tested — agent still complies under maximum pressure

**Signs of bulletproof:**
- Agent chooses correct option under maximum pressure
- Agent cites skill sections as justification
- Agent acknowledges temptation but follows rule anyway
- Meta-testing reveals "skill was clear, I should follow it"
