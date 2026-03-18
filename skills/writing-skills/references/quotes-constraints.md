# Quotes: Prompting Constraints

Direct quotes on constraint specificity, over-constraining, and the constraint-capability curve. Each cites a key from `bibliography.md`.

---

## More constraints ≠ better

> GPT-20B Java zero-shot: Struct 42.17% (peak at 48 tokens) → Edge 37.83% (decline at 117 tokens)
> — [Cheng 2026]

> Few-shot on Java: "Base plummets to 14.35% Pass@1... introducing fixed examples undermines Java performance on the whole"
> — [Cheng 2026], -25.22pp from adding examples

> "Increasing system-prompt constraint specificity does not monotonically improve correctness"
> — [Cheng 2026]

> "Java exhibiting significantly greater sensitivity to system prompt variations than Python"
> — [Cheng 2026]

> "Specific prompting techniques might work for specific questions for unclear reasons"
> — [Miller 2025]

---

## Constraints become handcuffs on capable models

> "Sculpting provides advantages on gpt-4o... but becomes detrimental on gpt-5"
> — [Khan 2025]

> GPT-4o: 97% with Sculpting vs 93% CoT. GPT-5: 94.00% Sculpting vs 96.36% CoT.
> — [Khan 2025]

> "Guardrail-to-Handcuff transition: constraints preventing common-sense errors in mid-tier models induce hyper-literalism in advanced models"
> — [Khan 2025]

> Three failure modes: "Hyper-literal interpretation, inference rejection, over-constraint leading to incomplete solutions"
> — [Khan 2025]

> "Optimal prompting strategies must co-evolve with model capabilities"
> — [Khan 2025]

---

## Free reasoning → constrained output beats constrained-throughout

> In-Writing (free reasoning → constrained output): DDXPlus "LLaMA from 12% to 30%; Gemma from 22.9% to 50.1%"
> — [Li 2026], +18pp to +27.2pp

> Shuffled Objects: "LLaMA jumped from 27.0% to 39.0%"
> — [Li 2026], +12pp

> Overhead: "10-20 additional tokens and 0.5-1.5 seconds processing time"
> — [Li 2026], minimal cost for large gains

---

## Output format is the one universal win

> Removing output formatting: -8.6pp GPT-4o, -12.1pp GPT-4o-mini (p<0.001). Removing system prompt: no effect.
> — [Miller 2025], format specification is load-bearing; identity framing is not

> "No evidence that removing the system prompt noticeably affects average performance."
> — [Miller 2025]

> "Audience-specific prompts statistically significantly outperformed speaker-specific prompts"
> — [Zheng 2026], "explain to a doctor" > "you are a doctor"

---

## Prompt effects are contingent

> "Sometimes being polite to the LLM helps performance, and sometimes it lowers performance"
> — [Miller 2025]

> "Constraining the AI's answers helps performance in some cases, though it may lower performance in other cases"
> — [Miller 2025]

> "Benchmarking AI performance is not one-size-fits-all, and also that particular prompting formulas or approaches are not universally valuable"
> — [Miller 2025]
