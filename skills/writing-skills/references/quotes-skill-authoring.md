# Quotes: Skill Authoring

Direct quotes on prompting techniques relevant to writing skills — CoT, examples, structure, output shaping, context engineering. Each cites a key from `bibliography.md`.

---

## Structure beats examples

> "Meta-prompt is example-agnostic structured prompt designed to capture the reasoning structure of a specific category of tasks." Qwen-72B: "46.3% on MATH vs 35.2% with standard CoT"
> — [Zhang 2023], +11.1% from structure over few-shot examples

> "Morphisms in the task category are mapped to corresponding morphisms in the prompt category." Prompt structure must mirror task structure.
> — [Zhang 2023]

> "Fundamental Contextual Statements" capture pattern essence through meaning rather than prescriptive syntax. Maps to Degrees of Freedom.
> — [White 2023]

---

## CoT helps symbolic tasks, hurts everything else

> Symbolic reasoning +14.2%, math +12.3%, logical reasoning +6.9%, "all other categories combined +0.7%" (56.8% vs 56.1%).
> — [Sprague 2024], meta-analysis of 100+ papers

> "~95% of CoT gains on MMLU came from questions containing '='"
> — [Sprague 2024], CoT helps symbolic manipulation, adds nothing for factual recall

> "Free response capabilities may be hindered by pre-planning or reasoning about the correct response."
> — [Sprague 2024]

> "LLMs augmented with external symbolic solvers frequently outperform CoT-only approaches."
> — [Sprague 2024]

---

## Conciseness is free

> "Each step constrained to '5 words at most' — ~48-92% token reduction while maintaining accuracy within 0-4% of verbose CoT."
> — [Xu 2025]

> "If you want concise output, you must demonstrate conciseness."
> — [Xu 2025], without examples showing concise format, zero-shot accuracy drops

---

## Examples set the register

> "Exemplar similarity (semantic closeness to the test case) typically yields performance gains."
> — [Schulhoff 2024]

> Seven-dimensional exemplar space: "Quantity, Ordering, Label Distribution, Label Quality, Format, Similarity to target, and Instruction Selection."
> — [Schulhoff 2024]

> "LLM can show unexplained bias towards the curated few-shot datapoints."
> — [Vatsal 2024]

> Contrastive examples (positive + negative): "+10-15%" over positive-only.
> — [Vatsal 2024]

---

## Affirmative framing and specificity

> "Employ affirmative directives such as 'do'" beats "'don't do Y.' Validated across all model scales."
> — [Bsharat 2023], Principle 4

> "Audience integration produces largest gains on large models"
> — [Bsharat 2023], Principle 2

> "Using same term repeatedly improves model compliance"
> — [Bsharat 2023], Principle 18, empirical backing for Consistent Terminology

> "'You MUST' improves compliance"
> — [Bsharat 2023], Principles 9 and 10

> "Average 57.7% quality improvement on GPT-4" across all 26 principles.
> — [Bsharat 2023]

---

## Underspecification causes sensitivity

> "Underspecified prompts exhibit higher performance variance and lower logit values."
> — [Pecher 2026]

> Instruction prompts: "85.37 ± 4.28 vs Minimal: 69.21 ± 7.25 on SST2."
> — [Pecher 2026]

> "Activations from middle layers contain enough information" even with underspecified prompts, but "underspecification affects the final layers and outputs."
> — [Pecher 2026], internal representations are robust; output layers are fragile

> "2 examples per class provided highest performance increase and reduction in standard deviation."
> — [Pecher 2026]

---

## Context engineering

> LLM summarization dropped context from "18,282 tokens (66.7% accuracy) to 122 tokens (57.1%)" in a single rewrite.
> — [Zhang 2025], context collapse — brevity bias destroys domain knowledge

> "Allowing the model to decide what matters at inference" outperforms pre-filtering.
> — [Zhang 2025]

> Context = "A(c_instr, c_know, c_tools, c_mem, c_state, c_query)." Six formal components.
> — [Mei 2025]

> "Models demonstrate remarkable proficiency in understanding complex contexts" but "exhibit pronounced limitations in generating equally sophisticated, long-form outputs."
> — [Mei 2025], understanding-generation asymmetry

---

## Skills are design patterns

> "Intent, applicability conditions, constituent components, and expected effects."
> — [Chen 2025], prompts as formal design artifacts

> "Prompt evolution is influenced by code changes, LLM updates, and user feedback."
> — [Chen 2025]

> "Success threshold (e.g., requiring outputs to be highly similar in at least 80% of test runs)."
> — [Chen 2025], flaky tests are the norm for prompt-based systems

---

## Prompt components interact

> "Six canonical prompt components: Directive, Examples, Output Formatting, Style Instructions, Role, Additional Information."
> — [Schulhoff 2024]

> "Style instructions may reinforce role assignments, while formatting specifications clarify output structure."
> — [Schulhoff 2024]

> "32-step iterative case study" — systematic iterative refinement, not one-shot design, produces best results.
> — [Schulhoff 2024]
