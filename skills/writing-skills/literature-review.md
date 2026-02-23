# Literature Review: Prompting Research for writing-skills Skill

## Papers Reviewed

| # | Short Title | Citation | Team |
|---|-------------|----------|------|
| 1 | [The Prompt Report](https://arxiv.org/abs/2406.06608) | Schulhoff et al., 2024 (updated Feb 2025) | Surveys |
| 2 | [Systematic Survey](https://arxiv.org/abs/2402.07927) | Sahoo et al., 2025 v2 | Surveys |
| 3 | [Survey by NLP Task](https://arxiv.org/abs/2407.12994) | Vatsal & Dubey, 2024 | Surveys |
| 4 | [Principled Instructions](https://arxiv.org/abs/2312.16171) | Bsharat et al., 2023 | Principles |
| 5 | [Prompt Pattern Catalog](https://arxiv.org/abs/2302.11382) | White et al., 2023 | Principles |
| 6 | [Chain-of-Thought](https://arxiv.org/abs/2201.11903) | Wei et al., 2022 (NeurIPS) | CoT/Meta |
| 7 | [To CoT or not to CoT](https://arxiv.org/abs/2409.12183) | Sprague et al., 2024 (ICLR 2025) | CoT/Meta |
| 8 | [Meta Prompting](https://arxiv.org/abs/2311.11482) | Zhang et al., 2023 (ICLR 2024 Workshop) | CoT/Meta |
| 9 | [Agentic Context Engineering](https://arxiv.org/abs/2510.04618) | Zhang et al., 2025/2026 (ICLR 2026) | Frontier |
| 10 | [Prompting Inversion](https://arxiv.org/abs/2510.22251) | Khan, Oct 2025 | Frontier |
| 11 | [Survey of Context Engineering](https://arxiv.org/abs/2507.13334) | Mei et al., Jul 2025 | Frontier |
| 12 | [Promptware Engineering](https://arxiv.org/abs/2503.02400) | Chen et al., Mar 2025 (TOSEM) | Frontier |
| 13 | [Chain of Draft](https://arxiv.org/abs/2502.18600) | Xu et al., Feb 2025 | Frontier |
| 14 | [Revisiting Prompt Sensitivity](https://arxiv.org/abs/2602.04297) | Pecher et al., Feb 2026 | Frontier |

---

## Per-Paper Findings

### Paper 1: [The Prompt Report](https://arxiv.org/abs/2406.06608)
**Citation:** Schulhoff et al., 2024 (updated Feb 2025), [arXiv:2406.06608](https://arxiv.org/abs/2406.06608)
**Key findings relevant to skill authoring:**
- **Six canonical prompt components** (Section 1.2.1): Directive, Examples, Output Formatting, Style Instructions, Role, Additional Information. The six components interact — style instructions may reinforce role assignments, while formatting specifications clarify output structure. Gives a structural vocabulary for what a skill file actually *is*.
- **Exemplar design has seven independent dimensions** (Section 2.2.1.1): Quantity, Ordering, Label Distribution, Label Quality, Format, Similarity to target, and Instruction Selection. Exemplar similarity (semantic closeness to the test case) typically yields performance gains. Diminishing returns on quantity vary by task complexity.
- **Prompt sensitivity is a first-class risk** (Section 5.2.1): Small wording changes significantly impact outputs. The paper identifies three manifestations: small prompt changes, task format variation, and prompt drift. Synonymous wording can dramatically shift outputs.
- **Decomposition taxonomy** (Section 2.2.3): Skeleton-of-Thought (outline structure before filling detail) and Plan-and-Solve (separate planning from execution) parallel the router-then-reference pattern.
- **Answer Engineering is a complementary discipline** (Section 2.5): Output processing (answer shape, answer space, answer extraction) sits alongside prompt engineering as a parallel concern. *How you extract the answer* matters alongside *how you frame the question*.
- **32-step iterative case study** (Section 6.2.3.3): Systematic iterative refinement — not one-shot design — produces best results.

**Supports skill principle:** Feedback Loops (Self-Criticism category), Consistent Terminology (paper built 33-term vocabulary to solve terminological fragmentation), Progressive Disclosure/Router (decomposition techniques)
**Challenges skill principle:** "One Excellent Example" — example *similarity to target* matters more than example *quality*. The seven-dimensional exemplar space is more nuanced than "one excellent" implies. "Only Teach What Claude Doesn't Know" — Role Prompting and Emotion Prompting work by *activating* knowledge the model already has, not teaching new information.
**New principle suggested:** Output Shaping (answer engineering is a complementary discipline), Sensitivity-Aware Authoring (treat exact phrasing as load-bearing), Component Interaction Model (six prompt components interact)

---

### Paper 2: [Systematic Survey of Prompt Engineering](https://arxiv.org/abs/2402.07927)
**Citation:** Sahoo et al., 2025 v2, [arXiv:2402.07927](https://arxiv.org/abs/2402.07927)
**Key findings relevant to skill authoring:**
- **Structured CoT boosts accuracy +13.79%** (Section 2.9.3): Using explicit program structures (sequence, branch, loop) in reasoning steps outperforms unstructured prose.
- **Chain-of-Draft: concise matches verbose at a fraction of token cost** (Section 2.2.22): Constraining to "concise, information-dense outputs at each step" matched CoT accuracy with 76.2% average latency reduction.
- **Chain-of-Symbol: symbols outperform natural language for structural tasks** (Section 2.2.5): Condensed symbols improved ChatGPT from 31.8% to 92.6% on spatial reasoning with 65.8% token reduction.
- **Self-Refine produces large gains**: GPT-4 improved +8.7 points (code optimization) and +21.6 points (sentiment reversal) through generate-critique-refine.
- **Instance-Adaptive Prompting outperforms static** (Section 2.2.15): Dynamic prompts beat static instructions by 1.82-21.7%.
- **Emotion Prompting works** (Section 2.8.1): +8% instruction induction, +115% on BIG-Bench. Provides zero new information — purely activates existing capability through framing.
- **Independent verification is key**: Chain-of-Verification's checking phase must be independent of the generation phase.

**Supports skill principle:** Feedback Loops (Self-Refine: +8.7-21.6 points), Only Teach What Claude Doesn't Know (Chain-of-Draft validates token economy), Degrees of Freedom (instance-adaptive > static)
**Challenges skill principle:** "Only Teach What Claude Doesn't Know" — Emotion Prompting's 115% boost provides no information, just framing. Sometimes *how you ask* matters more than *what you ask*. "One Excellent Example" — active exemplar selection outperforms fixed examples by +7%.
**New principle suggested:** Conciseness is Measurably Free (~48-92% fewer tokens, equal accuracy), Structural Patterns in Instructions (+13.79% from program-like structure), Independent Verification (checking must be independent of generation)

---

### Paper 3: [Survey by NLP Task](https://arxiv.org/abs/2407.12994)
**Citation:** Vatsal & Dubey, 2024, [arXiv:2407.12994](https://arxiv.org/abs/2407.12994)
**Key findings relevant to skill authoring:**
- **Few-shot examples introduce unexplained bias** (Section 2): "LLM can show unexplained bias towards the curated few-shot datapoints."
- **Domain knowledge injection can conflict with model knowledge**: Adding medical term definitions showed no improvement — "possibly conflicting with the bigger knowledge base of the LLM."
- **Contrastive examples (positive + negative) yield +10-15%** (Contrastive CoT section): Both correct and incorrect examples with explanations significantly outperform positive-only.
- **Auto-CoT eliminates manual curation without performance loss**: Automated exemplar selection matched or beat manually curated examples.
- **Technique effectiveness is task-specific, not universal** (Section 3): The paper's structure — organized by NLP task type — implicitly demonstrates that different prompting methods work better for different tasks. No single technique dominates across all categories.

**Supports skill principle:** "Only Teach What Claude Doesn't Know" (domain-injection failure is strong empirical validation), Degrees of Freedom (task-specific effectiveness validates matching approach to task type)
**Challenges skill principle:** "Testing via pressure scenarios" — task-specific effectiveness means pressure tests must cover the *range* of task types, not just stress-test one type.
**New principle suggested:** Contrastive Examples (+10-15% from showing what NOT to do), Task-Type Matching (no technique is universal — skills should declare their target task type), Summarize-Before-Acting for context-heavy tasks

---

### Paper 4: [Principled Instructions](https://arxiv.org/abs/2312.16171)
**Citation:** Bsharat et al., 2023, [arXiv:2312.16171](https://arxiv.org/abs/2312.16171)
**Key findings relevant to skill authoring:**
- **Affirmative framing outperforms negative** (Principle 4): "Employ affirmative directives such as 'do'" beats "don't do Y." Validated across all model scales.
- **Audience integration produces largest gains on large models** (Principle 2): Specifying who consumes the output is empirically high-value.
- **Output primers beat open-ended generation** (Principle 20): Starting the expected output reduces drift.
- **Delimiters and structural markers improve comprehension** (Principles 8, 17): ###Instruction###, ###Example### etc.
- **Decomposition outperforms monolithic** (Principle 3): Supports router architecture.
- **CoT + few-shot is synergistic** (Principle 19): Combination outperforms either alone — examples should show reasoning steps.
- **Keyword constraints outperform prose** (Principle 25): Terse keyword requirements beat narrative paragraphs.
- **Repetition improves adherence** (Principle 18): Using same term repeatedly improves model compliance (empirical backing for Consistent Terminology).
- **"You MUST" improves compliance** (Principles 9, 10): Imperatives and consequence framing increase adherence.
- **Allowing clarifying questions is most universally effective** (Principle 14): Improved "all questions it applies to."
- **Average 57.7% quality improvement on GPT-4** across all 26 principles.

**Supports skill principle:** Only Teach What Claude Doesn't Know (Principle 1: skip politeness), Consistent Terminology (Principle 18: empirical backing), One Excellent Example (Principles 7, 19), Router (Principle 3: decompose), Feedback Loops (Principle 14: allow questions)
**Challenges skill principle:** "Description = Triggers Only" — Principles 2, 16 suggest descriptions may benefit from audience/role context alongside triggers, not just conditions.
**New principle suggested:** Affirmative Framing Only ("do X" not "don't Y"), Output Primers (start expected output), Keyword Constraints Over Prose, Imperative Framing for Critical Rules ("You MUST")

---

### Paper 5: [Prompt Pattern Catalog](https://arxiv.org/abs/2302.11382)
**Citation:** White et al., 2023, [arXiv:2302.11382](https://arxiv.org/abs/2302.11382)
**Key findings relevant to skill authoring:**
- **Six-part pattern format: Name/Classification, Intent/Context, Motivation, Structure/Key Ideas, Example Implementation, Consequences.** Uses "a variant of a familiar pattern form" inspired by GoF software design patterns. Fundamental Contextual Statements (within Structure/Key Ideas) are described as "written descriptions of the important ideas to communicate in a prompt" where "an idea can be rewritten and expressed in arbitrary ways."
- **Fundamental Contextual Statements are semantic, not syntactic** (implied). The paper captures pattern essence through meaning-based statements rather than prescriptive syntax. Maps directly to Degrees of Freedom.
- **Six pattern categories**: Input Semantics, Output Customization, Error Identification, Prompt Improvement, Interaction, Context Control.
- **Cognitive Verifier pattern**: Generate sub-questions to decompose the main question, then combine. Goes beyond routing — the model generates its own sub-tasks.
- **Recipe pattern** (medium DoF): Provide known waypoints, let model fill gaps.
- **Template pattern** (low DoF): PLACEHOLDER markers in ALL CAPS for fill-in-the-blank.
- **Flipped Interaction**: Model asks questions until it has enough to generate. Supports feedback loops but inverts direction.
- **Context Manager**: Explicitly scope what context is active — "ignore X, focus on A and B."
- **Patterns compose synergistically**: Cognitive Verifier + Question Refinement; Game Play + Persona; Infinite Generation + Template; Fact Check List + Reflection. The paper provides explicit composition examples across categories.
- **Per-pattern limitations documented**: Template patterns can filter out useful details; Context Manager can cause context loss; Meta Language Creation risks confusion with common symbols; Reflection can produce incomplete answers.

**Supports skill principle:** Router (catalog structure validates routing), Degrees of Freedom (Template=low, Recipe=medium, Persona=high), Progressive Disclosure (Context Manager formalizes it), Feedback Loops (Reflection + Fact Check List + Cognitive Verifier), Consistent Terminology (Meta Language Creation extends it)
**Challenges skill principle:** "One Excellent Example" — Fundamental Contextual Statements (the minimum semantic content) may be more reliable than examples for certain skill types. "Testing via pressure scenarios" — Reflection/Fact Check List patterns suggest self-verification can be built INTO the skill itself.
**New principle suggested:** Name the Pattern (named patterns are more transferable), Fundamental Contextual Statements Over Exact Syntax, Compose Patterns Explicitly, Built-in Self-Verification, Context Scoping Directives (state what to ignore, not just what to attend to)

---

### Paper 6: [Chain-of-Thought Prompting](https://arxiv.org/abs/2201.11903)
**Citation:** Wei et al., 2022 (NeurIPS), [arXiv:2201.11903](https://arxiv.org/abs/2201.11903)
**Key findings relevant to skill authoring:**
- **CoT is emergent at ~100B parameters.** Below threshold, "models produced fluent but illogical chains of thought, leading to lower performance" (Section 3). Reasoning scaffolds are only useful when the executing model is capable enough.
- **Natural language bridging steps matter more than formal notation.** "Equation only" prompting failed on complex problems because questions were "too semantically challenging to directly translate into a math equation" without natural language reasoning (Section 3.3). Include the *why* between steps.
- **CoT benefit scales with problem complexity.** On GSM8K (complex), performance "more than doubled." On single-operation problems, gains were "negative or very small" (Section 3).
- **CoT is robust to exemplar variation.** Three different annotators all produced improvements. The quality of reasoning *structure* matters more than specific wording.
- **Decomposition allocates computation to complexity.** Progressive disclosure enables the model to allocate more reasoning to harder sub-problems.

**Supports skill principle:** Progressive Disclosure, Degrees of Freedom (simple tasks need no CoT), Only Teach What Claude Doesn't Know (CoT overhead on simple tasks is waste)
**Challenges skill principle:** "One Excellent Example" — reasoning *structure* matters more than example *quality*. Multiple mediocre examples with correct structure worked nearly as well.
**New principle suggested:** Bridging Language Rule — include natural language *why* between procedural steps ("First do X, because Y causes Z, then do W")

---

### Paper 7: [To CoT or not to CoT?](https://arxiv.org/abs/2409.12183)
**Citation:** Sprague et al., 2024 (ICLR 2025), [arXiv:2409.12183](https://arxiv.org/abs/2409.12183)
**Key findings relevant to skill authoring:**
- **CoT benefits are domain-specific.** Meta-analysis of 100+ papers: symbolic reasoning +14.2%, math +12.3%, logical reasoning +6.9%, **all other categories combined +0.7%** (56.8% vs 56.1%).
- **The "equals sign" heuristic**: ~95% of CoT gains on MMLU came from questions containing "=". CoT helps symbolic manipulation; adds almost nothing for factual recall or judgment.
- **CoT helps execution, not planning.** "Enhances performance primarily during the execution phase, particularly when handling intermediate symbolic computations."
- **Free-response tasks are hindered by pre-planning.** "Free response capabilities may be hindered by pre-planning or reasoning about the correct response."
- **Tool augmentation outperforms CoT.** "LLMs augmented with external symbolic solvers frequently outperform CoT-only approaches."
- **Selective application preserves performance while cutting cost.** Universal "let's think step by step" is wasteful.

**Supports skill principle:** Only Teach What Claude Doesn't Know (+0.7% on non-symbolic = near waste), Router (selective loading validated), Degrees of Freedom (free-response degradation with pre-planning), Feedback Loops (tool augmentation > reasoning)
**Challenges skill principle:** Degrees of Freedom needs sharpening — the binary (symbolic transformation vs. not) may be cleaner than the current fragility spectrum.
**New principle suggested:** Transformation Test (does this task involve transforming structured input to structured output? If yes, explicit steps. If no, they hurt), Execution vs. Planning Split, Prefer Tools Over Reasoning

---

### Paper 8: [Meta Prompting](https://arxiv.org/abs/2311.11482)
**Citation:** Zhang et al., 2023 (ICLR 2024 Workshop), [arXiv:2311.11482](https://arxiv.org/abs/2311.11482)
**Key findings relevant to skill authoring:**
- **Structure over examples.** Meta-prompt is "example-agnostic structured prompt designed to capture the reasoning structure of a specific category of tasks." Qwen-72B with meta-prompting: 46.3% on MATH vs 35.2% with standard CoT.
- **Dramatic token efficiency.** Game of 24: meta-prompting ~8k tokens at $0.0003/case vs Tree-of-Thought 5.5k/1.4k tokens across 61.72 sessions at $0.74/case. Meta-prompting: 100% success vs ToT's 74%.
- **Functor principle: prompt structure must mirror task structure.** If a task has recursive sub-problems, the prompt needs recursive structure. "Morphisms in the task category are mapped to corresponding morphisms in the prompt category."
- **Recursive self-refinement with lazy evaluation.** The framework applies refinements selectively rather than reprocessing entire outputs.
- **Overlapping expert scope degrades routing.** The conductor-expert architecture requires clear role boundaries to avoid redundant or conflicting expert responses.

**Supports skill principle:** Router (conductor pattern is structurally identical), Progressive Disclosure (lazy evaluation), Consistent Terminology (structural consistency required)
**Challenges skill principle:** "One Excellent Example" — zero examples with correct structure beats multiple examples. Meta-prompting achieves superior performance with *zero* examples. "Meta Prompting can be regarded as a form of zero-shot prompting."
**New principle suggested:** Structure Mirrors Task (skill organization should be isomorphic to task logical structure), Structural Scaffolding Over Examples (for procedural tasks, provide shape not filled example), Non-Overlapping Routing Boundaries

---

### Paper 9: [Agentic Context Engineering (ACE)](https://arxiv.org/abs/2510.04618)
**Citation:** Zhang et al., 2025/2026 (ICLR 2026), [arXiv:2510.04618](https://arxiv.org/abs/2510.04618)
**Key findings relevant to skill authoring:**
- **Brevity bias destroys domain knowledge.** LLM summarization dropped context from 18,282 tokens (66.7% accuracy) to 122 tokens (57.1%) in a single rewrite iteration. This is "context collapse."
- **Context as evolving playbook.** Strategies stored as structured bullets with metadata (unique IDs, helpfulness counters), enabling "localization, fine-grained retrieval, and incremental adaptation."
- **Delta updates over full rewrites.** Compact delta contexts preserve past knowledge through deterministic merging — like git commits, not file overwrites.
- **Three-role separation: Generator, Reflector, Curator.** Separating evaluation from curation improves quality.
- **Contexts should preserve, not compress.** "Allowing the model to decide what matters at inference" outperforms pre-filtering.

**Supports skill principle:** Progressive Disclosure (delta-update model), Feedback Loops (generation-reflection-curation cycle)
**Challenges skill principle:** "Only Teach What Claude Doesn't Know" — preserving MORE context (including things the model might know) outperforms aggressive pruning. 18K tokens at 66.7% vs 122 tokens at 57.1% is a stark warning against over-compression.
**New principle suggested:** Delta Updates Over Full Rewrites (skill revisions should be incremental patches), Preserve Domain Heuristics Generously (err toward including failure modes and domain quirks)

---

### Paper 10: [Prompting Inversion](https://arxiv.org/abs/2510.22251)
**Citation:** Khan, Oct 2025, [arXiv:2510.22251](https://arxiv.org/abs/2510.22251)
**Key findings relevant to skill authoring:**
- **Constraint effectiveness inverts with model capability.** Sculpting (heavy constraints) gave +9% on GPT-4o but 0% on GPT-5. Simple CoT scaffolding reached 96.36% on GPT-5 while Sculpting hit 94.00%.
- **"Guardrail-to-Handcuff" transition** (Sections 5, 5.2-5.4): Constraints function as beneficial guardrails on mid-tier models. On advanced models, identical constraints "override superior native reasoning and force unnatural interpretations."
- **Three failure modes of over-constraining** (Section 5.3): Hyper-literal interpretation, inference rejection, over-constraint leading to incomplete solutions.
- **Adaptive constraint threshold** (Section 6.2): accuracy <90% -> constrained prompting; accuracy >95% -> simple prompting.
- **Future trajectory**: As models improve, optimal instructions converge toward "simply writing clear directions."

**Supports skill principle:** Degrees of Freedom (directly validates matching specificity to context)
**Challenges skill principle:** Degrees of Freedom needs model-capability dimension — a skill with appropriate constraints for Claude 3.5 may become handcuffs for Claude 4.
**New principle suggested:** Capability-Aware Constraints (target model blind spots, not general correctness; audit when models update), Constrain Outputs Not Reasoning (failure modes all involved reasoning-process constraints)

---

### Paper 11: [Survey of Context Engineering](https://arxiv.org/abs/2507.13334)
**Citation:** Mei et al., Jul 2025, [arXiv:2507.13334](https://arxiv.org/abs/2507.13334)
**Key findings relevant to skill authoring:**
- **Formal context decomposition**: Context = `A(c_instr, c_know, c_tools, c_mem, c_state, c_query)`. Instruction, knowledge, tools, memory, state, and query as separate components.
- **Context routing is a first-class concept.** Retrieved context should be "not just semantically similar, but maximally informative for solving the task."
- **Agentic context is fundamentally different** from single-turn: dynamic updates, persistent memory, selective retrieval, state-dependent composition, planning-aware ordering.
- **Understanding-generation asymmetry**: "Models demonstrate remarkable proficiency in understanding complex contexts" but "exhibit pronounced limitations in generating equally sophisticated, long-form outputs."

**Supports skill principle:** Router (formally validated), Progressive Disclosure (staged information loading)
**Challenges skill principle:** None directly, but the formal decomposition suggests skills may benefit from explicitly separating instruction vs knowledge vs tool components.
**New principle suggested:** Separate Context Components (distinguish instruction/knowledge/tool/state), Optimize for Mutual Information Not Similarity

---

### Paper 12: [Promptware Engineering](https://arxiv.org/abs/2503.02400)
**Citation:** Chen et al., Mar 2025 (TOSEM), [arXiv:2503.02400](https://arxiv.org/abs/2503.02400)
**Key findings relevant to skill authoring:**
- **The "Promptware Crisis."** Current practices lack systematic methodology — "largely trial-and-error, time-consuming."
- **Multi-objective trade-offs**: Functional requirements (clarity, specificity, context-awareness) vs non-functional (security, fairness, efficiency, robustness).
- **Flaky tests are the norm**: Due to non-deterministic outputs, tests need "success threshold (e.g., requiring outputs to be highly similar in at least 80% of test runs)."
- **Test adequacy for prompts**: Evaluate "how well different components of a prompt (task descriptions, context, examples, formatting) are covered."
- **Prompt design patterns as formal artifacts**: Define "intent, applicability conditions, constituent components, and expected effects."
- **Evolution tracking is essential**: Prompt evolution is "influenced by code changes, LLM updates, and user feedback."

**Supports skill principle:** Testing via pressure scenarios (validates systematic testing; adds flaky-test nuance), Feedback Loops
**Challenges skill principle:** "One Excellent Example" — test adequacy suggests examples should cover *components* (task description, context, formatting) rather than one end-to-end example.
**New principle suggested:** Skills Are Design Patterns (intent + applicability + components + effects), Version Skills Against Model Generations (re-test when target model updates)

---

### Paper 13: [Chain of Draft](https://arxiv.org/abs/2502.18600)
**Citation:** Xu et al., Feb 2025, [arXiv:2502.18600](https://arxiv.org/abs/2502.18600)
**Key findings relevant to skill authoring:**
- **Concise reasoning matches verbose at a fraction of token cost.** Each step constrained to "5 words at most" — ~48-92% token reduction (varying by task) while maintaining accuracy within 0-4% of verbose CoT.
- **Human cognitive analogy**: Mirrors how experts "jot down only essential intermediate results — minimal drafts."
- **Few-shot examples are mandatory for conciseness**: Without examples showing concise format, zero-shot accuracy drops dramatically. "If you want concise output, you must demonstrate conciseness."
- **Model capability threshold**: Small models (<3B) show more pronounced performance gap with concise format.

**Supports skill principle:** Only Teach What Claude Doesn't Know (validates aggressive token efficiency)
**Challenges skill principle:** "One Excellent Example" — the example must demonstrate the *format and conciseness level* you want, not just the content. A verbose example produces verbose output.
**New principle suggested:** Examples Set the Output Register (format/verbosity/style of examples is mimicked more than textual instructions about format), Token Budget Awareness (every skill token competes with working memory)

---

### Paper 14: [Revisiting Prompt Sensitivity](https://arxiv.org/abs/2602.04297)
**Citation:** Pecher et al., Feb 2026, [arXiv:2602.04297](https://arxiv.org/abs/2602.04297)
**Key findings relevant to skill authoring:**
- **Underspecification is the primary cause of prompt sensitivity.** "Underspecified prompts exhibit higher performance variance and lower logit values." The model understands the task but "fails when outputting the results due to underspecification."
- **Specification operates on two tested levels**: Minimal and Instruction-based. Performance directly corresponds. Instruction prompts: 85.37 ± 4.28 vs Minimal: 69.21 ± 7.25 on SST2.
- **Internal representations are robust; output layers are fragile.** "Activations from middle layers contain enough information" even with underspecified prompts, but "underspecification affects the final layers and outputs."
- **In-context learning is the strongest fix**: 2 examples per class provided "highest performance increase and reduction in standard deviation."
- **Specification doesn't universally help**: On certain datasets (notably AG News), multiple models showed instruction format underperforming minimal prompts.

**Supports skill principle:** Degrees of Freedom (the *right things* must be specified precisely)
**Challenges skill principle:** "Description = Triggers Only" — trigger-only descriptions may be a form of underspecification. There may be a minimum viable specification threshold.
**New principle suggested:** Specify Outputs Not Process (output layers are fragile; heavily specify what output looks like), Examples Reduce Variance More Than Instructions (2 examples > paragraphs of instruction)

---

### Effect Sizes Reference Table

| Finding | Effect Size | Paper |
|---|---|---|
| Structured CoT vs unstructured | +13.79% accuracy | [Sahoo 2025](https://arxiv.org/abs/2402.07927) §2.9.3 |
| Contrastive examples vs positive-only | +10-15% | [Vatsal 2024](https://arxiv.org/abs/2407.12994) |
| Chain-of-Verification vs direct | +10%+ | [Vatsal 2024](https://arxiv.org/abs/2407.12994) §2.27 |
| Self-Refine iterative improvement | +8.7 to +21.6 points | [Sahoo 2025](https://arxiv.org/abs/2402.07927) |
| Active vs fixed example selection | +7.0% | [Sahoo 2025](https://arxiv.org/abs/2402.07927) §2.4.1 |
| Plan-and-Solve vs unplanned | +5%+ | [Vatsal 2024](https://arxiv.org/abs/2407.12994) §2.11 |
| Meta-prompt structure vs few-shot examples | +11.1% (46.3 vs 35.2) | [Zhang 2023](https://arxiv.org/abs/2311.11482) |
| CoT on symbolic reasoning | +14.2% | [Sprague 2024](https://arxiv.org/abs/2409.12183) |
| CoT on math | +12.3% | [Sprague 2024](https://arxiv.org/abs/2409.12183) |
| CoT on all other tasks | +0.7% | [Sprague 2024](https://arxiv.org/abs/2409.12183) |
| Chain-of-Draft token reduction | ~48-92% fewer tokens, equal accuracy | [Xu 2025](https://arxiv.org/abs/2502.18600) |
| Emotion Prompting (activation framing) | +115% BIG-Bench | [Sahoo 2025](https://arxiv.org/abs/2402.07927) §2.8.1 |
| Symbol vs natural language (structural) | 31.8% → 92.6% | [Sahoo 2025](https://arxiv.org/abs/2402.07927) §2.2.5 |
| Over-constraining on GPT-5 vs simple | -2.36% (94.00 vs 96.36) | [Khan 2025](https://arxiv.org/abs/2510.22251) |
| Instruction vs minimal specification | +16.16 pts, ±4.28 vs ±7.25 | [Pecher 2026](https://arxiv.org/abs/2602.04297) |
| Context collapse (18K → 122 tokens) | 66.7% → 57.1% | [Zhang 2025 (ACE)](https://arxiv.org/abs/2510.04618) |
| Instance-Adaptive vs static | +1.82 to +21.7% | [Sahoo 2025](https://arxiv.org/abs/2402.07927) §2.2.15 |
