---
name: diverge-critique-converge
description: >-
  Generate high-quality analysis, plans, or designs by running a structured bakeoff.
  N agents independently produce solutions in isolated worktrees, M critics review
  each from orthogonal angles, then synthesize the best elements into a composite.
  Use when the problem is ambiguous, high-stakes, or benefits from multiple perspectives.
  Triggers: bakeoff, diverge-converge, independent analysis, multi-perspective review,
  competitive analysis, adversarial review, stress-test a plan.
---

# Diverge → Critique → Converge

## Overview

Produce a high-quality output by preventing anchoring bias. Instead of writing one draft and iterating, generate N independent solutions, stress-test each from M angles, then synthesize.

## When to Use

- The problem is ambiguous and multiple valid approaches exist
- The output is high-stakes (architecture decisions, policy documents, migration plans)
- You suspect anchoring bias — a first draft would constrain thinking
- The user wants adversarial review or stress-testing of an idea
- The deliverable benefits from multiple perspectives (security, feasibility, policy, operations)

## When NOT to Use

- The task has one obvious correct answer
- Speed matters more than thoroughness
- The problem is too small to justify N agents (single-file change, simple bug fix)

## Inputs

Before starting, establish with the user:

1. **The problem statement** — what are we producing? (roadmap, architecture, policy, design)
2. **The criteria doc** — what yardstick do the agents evaluate against? If none exists, create one first and get user agreement. This doc must be committed/available so all agents read the same thing.
3. **N** — how many independent solutions? Default: 5. Use 3 for simpler problems, 5+ for complex ones.
4. **M** — how many review angles per solution? Default: 3. Standard angles: feasibility, completeness, risk. Customize per domain.
5. **Output location** — where does the composite go? Where are bakeoff entries preserved?

## Phase 1: Deep Investigation

Before launching the bakeoff, build a thorough understanding of the problem space. This can be done by the orchestrator or delegated to explore agents.

- Read all relevant files, configs, docs
- Understand current state, constraints, dependencies
- Produce or refine the criteria document that all agents will work against

**Key output:** A criteria doc that is separate from any solution. Agents evaluate against criteria, not against each other.

## Phase 2: Diverge (N Independent Solutions)

Launch N agents in parallel, each in an **isolated worktree** to prevent reading each other's work.

### Agent prompt template

```
You are creating an independent [DELIVERABLE TYPE] for [SUBJECT].

IMPORTANT: Do NOT read or reference [PATH TO EXISTING SOLUTION OR OTHER AGENTS' WORK].
Create your analysis completely independently.

Step 1: Read the criteria document at [PATH TO CRITERIA DOC].

Step 2: Thoroughly investigate [WHAT TO INVESTIGATE].
Read: [LIST OF FILES]

Step 3: Write your [DELIVERABLE] at [OUTPUT PATH] containing:
[STRUCTURE REQUIREMENTS]

Be opinionated. Take positions and defend them. Don't hedge.

Write the file, then stop. Do not commit.
```

### Critical rules

- **Worktree isolation is mandatory.** Use `isolation: "worktree"` on each Agent call. Without it, later agents read earlier agents' output and converge prematurely.
- **Explicit exclusion of existing work.** Tell agents NOT to read the existing solution, prior drafts, or other agents' files.
- **Same criteria doc for all.** Every agent reads the identical yardstick.
- **Same investigation scope.** List the same files for all agents to read so they have equal information.
- **Opinionated output.** Instruct agents to take positions, not hedge. Hedged outputs produce mush when synthesized.

### Failure handling

- Worktree creation can fail due to git lock contention when many launch simultaneously. Retry failed agents after a few seconds.
- Collect outputs from worktree paths: `.claude/worktrees/agent-{id}/[output-path]`
- Copy all outputs to the main repo before starting critique phase.

## Phase 3: Critique (M Reviews per Solution)

Launch N × M review agents. Each reviews ONE solution from ONE angle.

### Standard review angles

| Angle | What it asks |
|-------|-------------|
| **Feasibility** | Will each step actually work as described? Flag anything technically incorrect, with unstated prerequisites, or that won't work at runtime. Verify claims against actual files. |
| **Completeness** | Does this address all criteria dimensions? Are any under-addressed? Does the progression model make sense? Are the "unlocks" at each step realistic? What's missing? |
| **Risk** | Does this honestly assess what's lost? Is the classification defensible? Are there security, operational, or organizational risks ignored? Is the supply chain story adequate? |

### Customizable angles (pick based on domain)

- **Operational realism** — will this survive contact with production?
- **Policy alignment** — does this satisfy the organizational framework?
- **Security** — supply chain, blast radius, failure modes
- **Missing perspectives** — what blind spots exist?
- **Cost/effort accuracy** — are estimates realistic?

### Review agent prompt template

```
You are reviewing a [DELIVERABLE TYPE]. Read these two files:
1. [CRITERIA DOC PATH]
2. [SOLUTION PATH]

Also read [RELEVANT REPO FILES] to verify claims.

Your review angle is **[ANGLE]**. [ANGLE-SPECIFIC INSTRUCTIONS]

DO NOT edit any files. Return your review as plain text in your response.
```

### Performance tips

- Use `model: "haiku"` for review agents — they're focused critique tasks, not creative work. This saves significant cost and time.
- Launch all N × M agents in a single message for maximum parallelism.
- Review agents don't need worktree isolation — they're read-only.

## Phase 4: Converge (Synthesis)

Read all N solutions and all N × M reviews. Produce a composite that:

### Extract consensus

What do all/most solutions agree on? These are high-confidence findings. Document them as settled positions.

### Identify disagreements

Where do solutions diverge? For each disagreement:
- State both positions
- Note which reviews supported/challenged each
- Make a decision and document the rationale

### Cherry-pick unique contributions

Each solution will have ideas the others missed. Scan for these and incorporate the best ones.

### Apply review corrections

Reviews will flag things that are wrong (infeasible steps, incorrect claims, missing dimensions). Apply these corrections to the composite.

### Structural synthesis

- **Ordering:** Multiple solutions may propose different step orderings. The reviews (especially risk reviewers) will often flag ordering problems. Use their feedback.
- **Scope:** Some solutions will be more ambitious than others. The composite should match the user's appetite — ask if unclear.
- **Honest tradeoffs:** Include a section on what is lost, not just what is gained. Multiple risk reviewers will surface this.

### Preserve provenance

Keep the bakeoff entries and reviews alongside the composite so the reasoning chain is auditable:

```
docs/
  [topic]/
    [composite].md          # The final synthesized output
    [criteria].md           # The shared yardstick
    bakeoff/                # Independent solutions
      solution-a.md
      solution-b.md
      ...
    reviews/                # Critiques (if preserved as docs)
      ...
```

## Reporting

After each phase, give the user a status update:

**After diverge:** "N agents complete. Here's a one-line summary of each approach."

**After critique:** "N×M reviews complete. Here are the consensus findings and key disagreements."

**After converge:** "Composite produced. Here's what changed from the original approach and why."

## Scaling Guidance

| Problem complexity | N (solutions) | M (review angles) | Total agents |
|-------------------|---------------|-------------------|--------------|
| Simple (single doc, clear criteria) | 3 | 2 | 9 |
| Medium (multi-step plan, some ambiguity) | 5 | 3 | 20 |
| Complex (architecture, policy, high-stakes) | 5 | 5 | 30 |

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Agents read each other's work | Use worktree isolation; explicitly tell agents not to read other outputs |
| No criteria doc — agents invent their own yardstick | Always create and agree on criteria before diverge phase |
| Reviews are too gentle ("this is good but...") | Instruct reviewers to be direct; use angle-specific prompts that force hard questions |
| Composite is just the longest solution | Synthesize across all; the shortest solution may have the best idea |
| Skipping provenance | Keep bakeoff entries; the user may want to revisit individual perspectives |
| Using opus for review agents | Use haiku — reviews are focused critique, not creative generation |
| Launching all agents in one message and hitting rate limits | Launch in batches of 5-8 if needed |
