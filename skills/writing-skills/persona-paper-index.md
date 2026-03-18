# Persona Prompting Research — Paper Index with Key Quotes

Quick-reference index for all papers in `persona-prompting-review.md`. Each entry has the citation, the key finding in one line, and the most quotable passages for use in arguments, presentations, and skill documentation.

---

## 1. Persona is a Double-Edged Sword
- **Citation:** Gupta et al., 2024
- **Link:** https://arxiv.org/abs/2408.08631
- **One-line:** Personas hurt reasoning on 7/12 datasets; ensembling persona + neutral solver fixes it.
- **Key quotes:**
  - "Role-playing prompts sometimes distract LLMs, degrading their reasoning abilities in 7 out of 12 datasets in Llama3."
  - Jekyll & Hyde ensemble: "outperforming baselines by an average of 9.98% accuracy across twelve datasets when using GPT-4 as a backbone model"
  - Confusion matrix on AQuA: persona got 15.75% right that base got wrong, but also got 13.78% wrong that base got right — error redistribution, not improvement.

## 2. When "A Helpful Assistant" Is Not Really Helpful
- **Citation:** Zheng et al., 2023 (updated Feb 2026)
- **Link:** https://arxiv.org/abs/2311.10054
- **One-line:** 162 personas × 9 models × 2,410 questions: no improvement over no-persona control.
- **Key quotes:**
  - "Adding personas in system prompts does not improve model performance across a range of questions compared to the control setting where no persona is added."
  - "Gender-neutral roles result in higher performance than gendered roles."
  - "Audience-specific prompts statistically significantly outperformed speaker-specific prompts."
  - Automatic persona selection: "often performing no better than random selection"
  - Larger models: "Llama3-70B: more personas had negative effects than on smaller models."

## 3. Principled Personas
- **Citation:** Dong et al., Aug 2025
- **Link:** https://arxiv.org/abs/2508.19764
- **One-line:** Expert personas help inconsistently; irrelevant details cause up to 30pp drops.
- **Key quotes:**
  - "Models are highly sensitive to irrelevant persona details, with performance drops of almost 30 percentage points."
  - "Expert personas usually lead to positive or non-significant performance changes" but "often inconsistent or negligible across tasks."
  - Gemma-2-27b: "negative Expertise Advantage in 22% of the tasks when role-playing niche experts"
  - Mitigation strategies: "generally worsened smaller models" but "improve Robustness and preserve the Expertise Advantage of the largest models" (70B+)

## 4. Persona-Assigned LLMs Exhibit Motivated Reasoning
- **Citation:** Costello et al., Jun 2025
- **Link:** https://arxiv.org/abs/2506.20020
- **One-line:** Political personas make models evaluate scientific evidence through a partisan lens.
- **Key quotes:**
  - "GPT-3.5: Democrats 90% more likely correct when Crime Decreases aligns with liberal views"
  - "High School persona showed almost a 9% reduction compared to the baseline"
  - CoT debiasing: "Non-statistically significant 0.39% VDA decrease"
  - Accuracy prompting was counterproductive: "Statistically significant 2.93% VDA decrease"
  - "46% of open-source model answers contained explicit political references" when given political personas

## 5. Persona Prompting as a Lens on LLM Social Reasoning
- **Citation:** Yang et al., Jan 2026
- **Link:** https://arxiv.org/abs/2601.20757
- **One-line:** Persona helps hate speech classification on Mistral, hurts on Qwen3, does nothing on GPT-OSS.
- **Key quotes:**
  - "All Qwen3 personas performing worse than the baseline" while "most Mistral personas performing better than its baseline"
  - "PP led to significant performance drops in both label prediction (e.g., -9.2%)" (Qwen3)
  - "No significant improvements in rationale quality for any model-persona pair, and significant degradation in several cases."
  - "Simulated personas fail to align with their real-world demographic counterparts, and high inter-persona agreement shows models are resistant to significant steering."
  - GPT-OSS over-flagging: "almost all above 50%" from Offensive → Hate Speech

## 6. Do Persona-Infused LLMs Affect Performance in a Strategic Reasoning Game?
- **Citation:** Dec 2025
- **Link:** https://arxiv.org/abs/2512.06867
- **One-line:** Persona only helps strategic reasoning when a mediator translates it into heuristic values.
- **Key quotes:**
  - Personality Inventory mediator: "strategicThinker: ρ=0.49*** (p<0.005)"
  - Direct heuristic (no mediator): "strategicThinker (0.08, 0.05)" — not significant
  - "Direct heuristic players' correlations proved prone to dramatic changes across trials"
  - Simply telling the model "you are strategic" didn't make it strategic.

## 7. Can LLMs Simulate Personas with Reversed Performance?
- **Citation:** Apr 2025
- **Link:** https://arxiv.org/abs/2504.06460
- **One-line:** o1 maintains 99% accuracy across ALL personas; persona is cosmetic on capable models.
- **Key quotes:**
  - "OpenAI o1 maintains 99.0% accuracy across all personas"
  - "Even when models fail to lower their accuracy, some still produce noticeably different reasoning styles"
  - o1: Degree of Contrast 2.7 between personas despite identical accuracy — style changes, reasoning doesn't.
  - "Models often exhibit misunderstandings and errors but subsequently self-correct and arrive at the correct final answer"
  - 25.8%-56.6% of responses showed deliberate arithmetic errors that were later self-corrected.
  - Claude-3.5: 99.0%→74.0% with low-performer persona (-25pp). GPT-3.5-turbo: only -1.7pp.

## 8. Prompting Inversion
- **Citation:** Khan, Oct 2025
- **Link:** https://arxiv.org/abs/2510.22251
- **One-line:** Constraints help mid-tier models, become handcuffs on advanced ones.
- **Key quotes:**
  - "Sculpting provides advantages on gpt-4o... but becomes detrimental on gpt-5"
  - GPT-4o: 97% with Sculpting vs 93% CoT. GPT-5: 94.00% Sculpting vs 96.36% CoT.
  - "Guardrail-to-Handcuff transition: constraints preventing common-sense errors in mid-tier models induce hyper-literalism in advanced models"
  - Three failure modes: "Hyper-literal interpretation, inference rejection, over-constraint leading to incomplete solutions"
  - "Optimal prompting strategies must co-evolve with model capabilities"

## 9. Prompt Engineering is Complicated and Contingent
- **Citation:** Mar 2025
- **Link:** https://arxiv.org/abs/2503.04818
- **One-line:** Prompt effects are question-level, not universal; format is the one consistent win.
- **Key quotes:**
  - "Sometimes being polite to the LLM helps performance, and sometimes it lowers performance"
  - "Constraining the AI's answers helps performance in some cases, though it may lower performance in other cases"
  - Removing formatting: significant degradation (GPT-4o: RD=0.086, p<0.001; GPT-4o-mini: RD=0.121, p<0.001)
  - Removing system prompt: "no evidence that removing the system prompt noticeably affects average performance"
  - "Specific prompting techniques might work for specific questions for unclear reasons"

## 10. Empirical Study on System Prompts for Code Generation
- **Citation:** Cheng & Mastropaolo, Feb 2026
- **Link:** https://arxiv.org/abs/2602.15228
- **One-line:** More constraint tokens ≠ better; few-shot examples caused -25pp on Java.
- **Key quotes:**
  - "Increasing system-prompt constraint specificity does not monotonically improve correctness"
  - GPT-20B Java zero-shot: Struct 42.17% (peak) → Edge 37.83% (decline at max constraint)
  - Few-shot on Java: "Base plummets to 14.35% Pass@1... introducing fixed examples undermines Java performance on the whole"
  - "For larger code-specialized models, few-shot examples can degrade performance relative to zero-shot generation"
  - "Java exhibiting significantly greater sensitivity to system prompt variations than Python"

## 11. Thinking Before Constraining
- **Citation:** Jan 2026
- **Link:** https://arxiv.org/abs/2601.07525
- **One-line:** Free reasoning then constrained output beats constrained-throughout by 12-27pp.
- **Key quotes:**
  - DDXPlus: "LLaMA from 12% to 30%; Gemma from 22.9% to 50.1%" (+18pp / +27.2pp)
  - Shuffled Objects: "LLaMA jumped from 27.0% to 39.0%" (+12pp)
  - Overhead: "10-20 additional tokens and 0.5-1.5 seconds processing time" — minimal cost for large gains
  - Few-shot with In-Writing: "GSM8K achieved 80.5% accuracy, surpassing the reported 79.6% baseline for 8-shot chain-of-thought"

## 12. Two Tales of Persona in LLMs (Survey)
- **Citation:** Jun 2024
- **Link:** https://arxiv.org/abs/2406.01171
- **One-line:** Survey distinguishing role-playing (persona assigned to LLM) from personalization (LLM adapts to user).
- **Key quotes:**
  - Taxonomy: "LLM Role-Playing, where personas are assigned to LLMs" vs "LLM Personalization, where LLMs take care of user personas"
  - "Recent studies have demonstrated that leveraging role-playing increases LLM capabilities, including reasoning, planning, and problem-solving" — this claim is challenged by the 2025-2026 papers above.

## 13. Bias Runs Deep
- **Citation:** Nov 2023 (updated 2024)
- **Link:** https://arxiv.org/abs/2311.04892
- **One-line:** 80-100% of personas introduced bias; up to 69pp accuracy drops.
- **Key quotes:**
  - "80% of our personas demonstrated bias" (ChatGPT-3.5 June 2023). "100% of evaluated personas demonstrated bias" (November 2023).
  - "Physically disabled persona: statistically significant drops on 96% of reasoning datasets"
  - "Religious persona: 69% drop on college chemistry"
  - "Physically disabled persona: 58% of errors resulted from explicit abstentions"
  - "GPT-4-Turbo: Most improved model with bias affecting 42% of personas; still demonstrated up to 20% performance drops"
  - Debiasing prompts: "proved ineffective or counterproductive"

## 14. Prompt Injection as Role Confusion
- **Citation:** Mar 2026
- **Link:** https://arxiv.org/abs/2603.12277
- **One-line:** Role boundaries dissolve in latent space; style IS the role, not tags.
- **Key quotes:**
  - "Role boundaries exist at the interface but dissolve in latent space"
  - "To the model's geometry, sounding like a role, or claiming to be one, is indistinguishable from being that role"
  - CoT-styled text maintained "85% internal CoTness even when wrapped in `<user>` tags"
  - "Removing stylistic markers while preserving semantic content collapsed attack success from 61% to 10%"
  - Forged reasoning: "79% CoTness vs genuine reasoning at 68%" — mimicking style activates the same representations

## 15. Reliability of Persona-Conditioned LLMs as Survey Respondents
- **Citation:** Feb 2026 (ACM WWW '26)
- **Link:** https://arxiv.org/abs/2602.18462
- **One-line:** Persona conditioning didn't improve survey alignment; effects were heterogeneous.
- **Key quotes:**
  - "Persona prompting does not yield a consistent aggregate improvement in survey alignment"
  - "Persona prompting can redistribute errors unevenly across groups, undermining subgroup fidelity"
  - Llama-2-13B: persona slightly reduced both HS (0.370→0.366) and SS (0.621→0.612)
  - Qwen3-4B: marginal HS increase (0.391→0.398), SS unchanged (0.627)

## 16. PersonaGym
- **Citation:** Samuel et al., Jul 2024 (updated Sep 2025)
- **Link:** https://arxiv.org/abs/2407.18416
- **One-line:** Benchmark for persona compliance (not task quality); model size uncorrelated with persona capability.
- **Key quotes:**
  - "Model size and capacity is not correlated with performance on PersonaGym"
  - "Claude 3 Haiku strongly resists persona agent roles" — refusal rate 8.5× higher than second-place
  - "No single model consistently excels in all tasks"
  - Claude 3.5 Sonnet and GPT-4.5 tied at top (4.51 PersonaScore) — but this measures persona *compliance* (mimicking the persona), not whether the persona improved task output
  - LLaMA-3-8b (4.49) outperformed larger 70B variants — being a bigger model doesn't make you better at personas
  - Linguistic Habits: "all but three models scored below 4.0" — universal weakness in matching persona-appropriate language
