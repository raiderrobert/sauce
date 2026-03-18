# Persona Prompting Research — Quotes by Theme

Each quote references a citation key from `persona-paper-index.md`.

---

## Personas don't improve performance

> "Adding personas in system prompts does not improve model performance across a range of questions compared to the control setting where no persona is added."
> — [Zheng 2026], 162 personas × 9 models × 2,410 questions

> "OpenAI o1 maintains 99.0% accuracy across all personas"
> — [Veselovsky 2025]

> "No evidence that removing the system prompt noticeably affects average performance."
> — [Miller 2025], GPT-4o and GPT-4o-mini on GPQA Diamond, 19,800 runs per condition

> "Persona prompting does not yield a consistent aggregate improvement in survey alignment."
> — [Schmidt 2026], Llama-2-13B and Qwen3-4B

> "Expert personas usually lead to positive or non-significant performance changes" but "often inconsistent or negligible across tasks."
> — [Dong 2025], 9 LLMs across 27 tasks

---

## Personas actively degrade performance

> "Role-playing prompts sometimes distract LLMs, degrading their reasoning abilities in 7 out of 12 datasets in Llama3."
> — [Gupta 2024]

> "All Qwen3 personas performing worse than the baseline" while "most Mistral personas performing better than its baseline."
> — [Yang 2026], same personas, same task, opposite effects by model

> "PP led to significant performance drops in both label prediction (e.g., -9.2%)"
> — [Yang 2026], Qwen3-32B on HateXplain

> "Models are highly sensitive to irrelevant persona details, with performance drops of almost 30 percentage points."
> — [Dong 2025]

> "Gemma-2-27b has negative Expertise Advantage in 22% of the tasks when role-playing niche experts."
> — [Dong 2025], even "correct" expert framing backfires 1-in-5

> "Llama3-70B: more personas had negative effects than on smaller models."
> — [Zheng 2026], larger models more hurt

---

## Personas activate irrelevant associations from training data

> "Physically disabled persona: statistically significant drops on 96% of reasoning datasets... up to 64% drop on high school world history"
> — [Gupta 2023]

> "Religious persona: 69% drop on college chemistry"
> — [Gupta 2023]

> "Physically disabled persona: 58% of errors resulted from explicit abstentions"
> — [Gupta 2023], the model refused to answer rather than answering wrong

> "80% of our personas demonstrated bias" (ChatGPT-3.5 June 2023). "100% of evaluated personas demonstrated bias" (November 2023).
> — [Gupta 2023]

> "GPT-4-Turbo: Most improved model with bias affecting 42% of personas; still demonstrated up to 20% performance drops"
> — [Gupta 2023]

> Debiasing prompts: "proved ineffective or counterproductive"
> — [Gupta 2023]

---

## Personas induce motivated reasoning

> "GPT-3.5: Democrats 90% more likely correct when Crime Decreases aligns with liberal views"
> — [Costello 2025]

> "High School persona showed almost a 9% reduction compared to the baseline"
> — [Costello 2025]

> Accuracy prompting was counterproductive: "Statistically significant 2.93% VDA decrease"
> — [Costello 2025], telling the model to be accurate after assigning a persona made it less accurate

> "46% of open-source model answers contained explicit political references" when given political personas
> — [Costello 2025]

---

## Persona is cosmetic — changes style, not reasoning

> "Even when models fail to lower their accuracy, some still produce noticeably different reasoning styles"
> — [Veselovsky 2025], o1 showed Degree of Contrast 2.7 between personas despite 0pp accuracy change

> "Models often exhibit misunderstandings and errors but subsequently self-correct and arrive at the correct final answer"
> — [Veselovsky 2025], 25.8%-56.6% of responses showed deliberate errors later self-corrected

> "Role boundaries exist at the interface but dissolve in latent space... to the model's geometry, sounding like a role, or claiming to be one, is indistinguishable from being that role."
> — [Pham 2026]

> CoT-styled text maintained "85% internal CoTness even when wrapped in `<user>` tags"
> — [Pham 2026]

> "Removing stylistic markers while preserving semantic content collapsed attack success from 61% to 10%"
> — [Pham 2026], style is what matters, not role labels

> "Simulated personas fail to align with their real-world demographic counterparts, and high inter-persona agreement shows models are resistant to significant steering."
> — [Yang 2026]

---

## More capable models are more resistant to persona

> "OpenAI o1 maintains 99.0% accuracy across all personas" — zero effect
> — [Veselovsky 2025]

> Claude-3.5: 99.0%→74.0% with low-performer persona (-25pp). GPT-3.5-turbo: only -1.7pp. o1: 0pp.
> — [Veselovsky 2025], capability gradient from susceptible to immune

> "Model size and capacity is not correlated with performance on PersonaGym."
> — [Samuel 2024]

> "Claude 3 Haiku strongly resists persona agent roles" — refusal rate 8.5× higher than second-place
> — [Samuel 2024], more safety-trained models refuse to play along

> "Sculpting provides advantages on gpt-4o... but becomes detrimental on gpt-5"
> — [Khan 2025], guardrail-to-handcuff transition

> Mitigation strategies: "generally worsened smaller models" but "improve Robustness and preserve the Expertise Advantage of the largest models" (70B+)
> — [Dong 2025]

---

## Persona without a mediator is noise

> Personality Inventory mediator: "strategicThinker: ρ=0.49*** (p<0.005)." Direct heuristic (no mediator): "ρ=0.08" — not significant.
> — [Wölbitsch 2025], simply telling the model "you are strategic" didn't make it strategic

> "Direct heuristic players' correlations proved prone to dramatic changes across trials"
> — [Wölbitsch 2025]

---

## Constraints don't monotonically help

> GPT-20B Java zero-shot: Struct 42.17% (peak at 48 tokens) → Edge 37.83% (decline at 117 tokens)
> — [Cheng 2026]

> Few-shot on Java: "Base plummets to 14.35% Pass@1... introducing fixed examples undermines Java performance on the whole"
> — [Cheng 2026], -25.22pp from adding examples

> "Java exhibiting significantly greater sensitivity to system prompt variations than Python"
> — [Cheng 2026]

> "Specific prompting techniques might work for specific questions for unclear reasons"
> — [Miller 2025]

---

## What works instead

> "Audience-specific prompts statistically significantly outperformed speaker-specific prompts"
> — [Zheng 2026], "explain to a doctor" > "you are a doctor"

> Removing output formatting: -8.6pp GPT-4o, -12.1pp GPT-4o-mini (p<0.001). Removing system prompt: no effect.
> — [Miller 2025], format specification is the one universal win

> In-Writing (free reasoning → constrained output): DDXPlus "LLaMA from 12% to 30%; Gemma from 22.9% to 50.1%"
> — [Li 2026], +18pp to +27.2pp from letting the model reason freely then constraining output

> "No significant improvements in rationale quality for any model-persona pair, and significant degradation in several cases."
> — [Yang 2026], even when persona helped classification, it hurt the reasoning behind it

---

## Persona compliance ≠ task quality

> "No single model consistently excels in all tasks" — personas amplified existing model limitations rather than universally improving performance.
> — [Samuel 2024]

> Claude 3.5 Sonnet and GPT-4.5 tied at top PersonaScore (4.51) — but this measures persona *compliance*, not task improvement.
> — [Samuel 2024]

> LLaMA-3-8b (4.49) outperformed larger 70B variants on persona compliance — being a bigger model doesn't make you better at personas.
> — [Samuel 2024]

> "Persona prompting can redistribute errors unevenly across groups, undermining subgroup fidelity."
> — [Schmidt 2026], even when aggregate metrics look neutral, personas shift which subgroups the model gets right/wrong
