# Literature Review: Persona & Constrained Prompting Research

Companion to `literature-review.md`. Focused question: **Does framing prompts with personas ("act as X") help or hurt LLM task performance, and under what conditions?**

## Papers Reviewed

| # | Short Title | Citation | Cluster |
|---|-------------|----------|---------|
| 1 | [Persona Double-Edged Sword](https://arxiv.org/abs/2408.08631) | Gupta et al., 2024 | Persona effect |
| 2 | [Not Really Helpful](https://arxiv.org/abs/2311.10054) | Zheng et al., 2023 (updated Feb 2026) | Persona effect |
| 3 | [Principled Personas](https://arxiv.org/abs/2508.19764) | Dong et al., Aug 2025 | Persona effect |
| 4 | [Motivated Reasoning](https://arxiv.org/abs/2506.20020) | Costello et al., Jun 2025 | Persona effect |
| 5 | [Social Reasoning Lens](https://arxiv.org/abs/2601.20757) | Jan 2026 | Persona effect |
| 6 | [Strategic Reasoning Game](https://arxiv.org/abs/2512.06867) | Dec 2025 | Persona effect |
| 7 | [Reversed Performance](https://arxiv.org/abs/2504.06460) | Apr 2025 | Persona effect |
| 8 | [Prompting Inversion](https://arxiv.org/abs/2510.22251) | Khan, Oct 2025 | Constraint |
| 9 | [Complicated and Contingent](https://arxiv.org/abs/2503.04818) | Mar 2025 | Constraint |
| 10 | [System Prompts for Code Gen](https://arxiv.org/abs/2602.15228) | Cheng & Mastropaolo, Feb 2026 | Constraint |
| 11 | [Thinking Before Constraining](https://arxiv.org/abs/2601.07525) | Jan 2026 | Constraint |
| 12 | [Two Tales of Persona (Survey)](https://arxiv.org/abs/2406.01171) | Jun 2024 | Survey |
| 13 | [Bias Runs Deep](https://arxiv.org/abs/2311.04892) | Nov 2023 (updated 2024) | Bias/safety |
| 14 | [Role Confusion](https://arxiv.org/abs/2603.12277) | Mar 2026 | Mechanistic |
| 15 | [Persona Survey Respondents](https://arxiv.org/abs/2602.18462) | Feb 2026 (ACM WWW '26) | Persona effect |

---

## Per-Paper Findings

### Paper 1: [Persona is a Double-Edged Sword](https://arxiv.org/abs/2408.08631)
**Citation:** Gupta et al., 2024, [arXiv:2408.08631](https://arxiv.org/abs/2408.08631)
**Key findings relevant to persona prompting:**
- **Personas degraded reasoning in 7 of 12 datasets on Llama3-8B.** Specific drops: AQuA 94.23%→91.27% (-2.96pp), CommonsenseQA 74.50%→72.29% (-2.21pp), Date Understanding 77.42%→74.44% (-2.98pp).
- **Personas helped on some tasks.** GPT-4 Last Letter: 19.80%→92.80% (+73pp). GPT-3.5 Date Understanding: 67.84%→76.15% (+8.31pp). The gains were concentrated on symbolic/structural tasks.
- **Jekyll & Hyde ensemble outperformed both.** Combining persona and neutral solvers then cross-checking: GPT-4 average +9.98% across 12 datasets. Specifically: Object Tracking 45.96%→61.69%, Coin Flip 66.93%→80.27%.
- **LLM-generated personas were more stable than handcrafted.** Handcrafted SD=6.11-8.02; LLM-generated SD=2.08-3.06. Lower variance, comparable mean accuracy.
- **Confusion matrix reveals the mechanism.** On AQuA: persona got 15.75% of cases right that base got wrong, but also got 13.78% wrong that base got right. Personas don't uniformly help — they shift the error distribution.

**Supports principle:** Degrees of Freedom (personas help on symbolic tasks, hurt on others), Feedback Loops (ensemble catches persona-induced errors)
**Challenges principle:** "Only Teach What Claude Doesn't Know" — personas add zero information but shift error distributions significantly. The activation is real but double-edged.
**New principle suggested:** Ensemble Over Persona (if using personas, always cross-check with a neutral solver), Task-Type Gating (personas help symbolic/structural tasks, hurt commonsense reasoning)

---

### Paper 2: [When "A Helpful Assistant" Is Not Really Helpful](https://arxiv.org/abs/2311.10054)
**Citation:** Zheng et al., 2023 (updated Feb 2026), [arXiv:2311.10054](https://arxiv.org/abs/2311.10054)
**Key findings relevant to persona prompting:**
- **162 personas tested across 9 models, 2,410 MMLU questions: no improvement over no-persona control.** Most personas had "no or negative impact."
- **Models tested:** FLAN-T5-XXL (11B), Llama-3-Instruct (8B/70B), Mistral-7B-Instruct-v0.2, Qwen2.5-Instruct (3B-72B). 9 models total.
- **Gender-neutral roles outperformed gendered roles.** Masculine percentage coefficient: -5.79e-4 (p=0.561, not significant for implicit gender). Explicit gender roles: gender-neutral significantly outperformed.
- **In-domain personas showed tiny effect.** Coefficient: 0.004 (p<0.01). Statistically significant but described as "relatively small."
- **Larger models were MORE hurt by personas.** Llama3-70B: more personas had negative effects than on smaller models. Qwen2.5-7B and Qwen2.5-72B: completely insensitive to all 162 personas.
- **Automatic persona selection was no better than random.** Best-per-question oracle showed improvement (upper bound), but all automated strategies "often performing no better than random selection."
- **Audience-specific > speaker-specific prompts.** "Answer this as if explaining to a doctor" outperformed "You are a doctor" — with small effect sizes.

**Supports principle:** Constrain Outputs Not Reasoning (audience framing > persona framing), Capability-Aware Constraints (larger models more hurt)
**Challenges principle:** "Include activation framing" — on factual questions, activation framing provides no benefit and may harm. The +115% Emotion Prompting finding (Sahoo 2025) may be task-specific, not generalizable.
**New principle suggested:** Persona-Free Default (start without persona; add only if measured improvement on your task), Audience Over Identity (specify who consumes the output, not who produces it)

---

### Paper 3: [Principled Personas](https://arxiv.org/abs/2508.19764)
**Citation:** Dong et al., Aug 2025, [arXiv:2508.19764](https://arxiv.org/abs/2508.19764)
**Key findings relevant to persona prompting:**
- **9 LLMs across 3 families (Gemma-2 2B/9B/72B, Llama-3 3B/8B/70B, Qwen2.5 3B/7B/72B), 27 tasks across 5 datasets (TruthfulQA 817, GSM8K 1,319, MMLU-Pro 14 domains, BIG-Bench 4 tasks, MATH 7 categories). 21,575 total instances.**
- **Three desiderata evaluated: Expertise Advantage, Robustness, Fidelity.**
- **Expert personas showed positive or non-significant effects in 78-100% of tasks.** But Gemma-2-27b showed *negative* Expertise Advantage in 22% of tasks when role-playing niche experts.
- **Irrelevant persona attributes (names, colors) significantly degraded performance in 14-59% of tasks.** "Performance drops of almost 30 percentage points" from irrelevant details.
- **Fidelity was weak.** Education-level fidelity: positive correlation in 51-88% of largest models only. Domain-match and specialization-level fidelity: predominantly non-significant across all models.
- **Mitigation strategies (Instruction, Refine, Refine+Instruction) generally worsened smaller models** but "improve Robustness and preserve the Expertise Advantage of the largest models" (70B+). Mitigation is a luxury of scale.

**Supports principle:** Capability-Aware Constraints (mitigation only works on 70B+ models), Sensitivity-Aware Authoring
**Challenges principle:** Broad persona framing ("You are a software engineer who loves hiking and plays guitar") — irrelevant details are actively harmful in 14-59% of tasks, not just wasteful. Even niche expert personas backfire 22% of the time on capable models.
**New principle suggested:** Minimal Persona (if using persona, include ONLY task-relevant attributes — every irrelevant detail risks a 30pp drop), Persona Attribute Pruning, Expert Persona Is Not Reliable (78-100% positive sounds good, but 0-22% negative means 1-in-5 chance of harm even with "correct" expert framing)

---

### Paper 4: [Persona-Assigned LLMs Exhibit Human-Like Motivated Reasoning](https://arxiv.org/abs/2506.20020)
**Citation:** Costello et al., Jun 2025, [arXiv:2506.20020](https://arxiv.org/abs/2506.20020)
**Key findings relevant to persona prompting:**
- **"High School" persona reduced veracity discernment by ~9% vs baseline.** "Democrat" persona increased VDA by 4%. Most other personas decreased performance.
- **Political personas induced motivated reasoning.** Democrats 90% more likely to correctly evaluate evidence when ground truth aligned with liberal views (GPT-3.5). Similar patterns across Llama2, Llama3.1, WizardLM2.
- **OpenAI models (baseline VDA 0.86±0.08) showed VDA decreases with personas.** Open-source models (baseline 0.61±0.09) showed VDA increases. Persona effects were model-family dependent.
- **CoT debiasing was ineffective.** Non-significant 0.39% VDA decrease. Accuracy prompting was counterproductive: significant 2.93% VDA decrease.
- **46% of open-source model answers contained explicit political references** when given political personas. CoT reduced to 8%, accuracy prompting to 0%.
- **Skin cream control task (neutral topic): bias disappeared.** Confirms persona-induced bias is content-specific, not universal.

**Supports principle:** Constrain Outputs Not Reasoning (personas inject reasoning bias that debiasing can't fix)
**Challenges principle:** "Activation framing is cheap and helpful" — for judgment tasks, persona activation introduces motivated reasoning that mirrors human cognitive biases. The model doesn't just activate knowledge; it activates the biases associated with that identity.
**New principle suggested:** Persona Bias Inheritance (personas import the stereotypical biases of the role, not just the expertise), Avoid Identity Personas for Judgment Tasks

---

### Paper 5: [Persona Prompting as a Lens on LLM Social Reasoning](https://arxiv.org/abs/2601.20757)
**Citation:** Yang et al., Jan 2026, [arXiv:2601.20757](https://arxiv.org/abs/2601.20757)
**Key findings relevant to persona prompting:**
- **Models tested:** GPT-OSS-120B, Mistral-Medium, Qwen3-32B. **Datasets:** HateXplain (20K posts), CoS-E (commonsense), SST-2 (sentiment). **7 persona attribute groups:** Age, Loneliness, Religion, Education, Race, Gender, Political View.
- **Persona prompting improved hate speech classification for Mistral** (most personas better than baseline) **but ALL Qwen3 personas performed worse than baseline.** GPT-OSS was largely insensitive.
- **Rationale quality degraded across the board.** "GPT-OSS personas all fall into the same range as baseline, while Mistral and Qwen3 personas all score worse" on Token-F1 for rationale selection.
- **Inter-persona agreement was high for GPT-OSS (α ≥ 0.81) but poor for Qwen3 (α = 0.52-0.68).** Political View showed lowest agreement across all models (GPT-OSS: 0.81, Mistral: 0.57, Qwen3: 0.52). Models are resistant to steering — different personas produce similar outputs.
- **Over-flagging was pervasive.** All models systematically classified Normal content as Offensive or Hate Speech. GPT-OSS: >50% over-flagging rate from O→H. Top-performing personas (Male, Not lonely, Right-wing, White, Atheist) had lower over-flagging rates.
- **On CoS-E and SST-2: no statistically significant benefits from persona prompting.** CIs crossed baseline for nearly all persona-model pairs.
- **Qwen3-32B showed significant performance DROPS:** e.g., -9.2% on label prediction with personas.

**Supports principle:** Constrain Outputs Not Reasoning (personas help classification but hurt explanation quality), Capability-Aware Constraints (GPT-OSS-120B most resistant to persona effects)
**Challenges principle:** Persona as domain activation — if personas don't actually align with real-world counterparts and inter-persona agreement is high, the "activation" metaphor is misleading. The model performs a superficial pattern match rather than genuinely shifting its reasoning approach.
**New principle suggested:** Persona Fidelity Gap (simulated personas don't match real counterparts — don't assume "act as X" produces X-like reasoning), Persona Effects Are Model-Dependent (same persona helps on Mistral, hurts on Qwen3, does nothing on GPT-OSS)

---

### Paper 6: [Do Persona-Infused LLMs Affect Performance in a Strategic Reasoning Game?](https://arxiv.org/abs/2512.06867)
**Citation:** Dec 2025, [arXiv:2512.06867](https://arxiv.org/abs/2512.06867)
**Key findings relevant to persona prompting:**
- **Strategic personas improved game performance, but ONLY with a mediator.** Direct persona assignment: no significant effect. Personality Inventory (PI) mediator translating persona→heuristic values: significant correlation (strategicThinker ρ=0.49***, domainExpert ρ=0.41***).
- **Direct heuristic generation without mediator: all correlations weak and non-significant** (strategicThinker 0.08, domainExpert 0.12). Simply telling the model "you are strategic" didn't make it strategic.
- **Models tested:** GPT-4o, Llama-3-8B, Llama-4-Maverick-17B, Mistral-Small.
- **Top personas were strategic/military themed** (TrueSkill ~28). Bottom were children/students (TrueSkill <22). Gap of ~6 TrueSkill points.
- **Direct heuristic was unreliable across runs.** PI showed significant persona-feature correlations across both runs; DH showed "dramatic changes across trials."
- **Smaller models produced less consistent mappings.** Some heuristic differences exceeded +70 (vs near-zero for GPT-4 PI method).

**Supports principle:** Constrain Outputs Not Reasoning (mediator translates persona into concrete heuristics = output specification), Capability-Aware Constraints (smaller models worse at persona interpretation)
**Challenges principle:** "Persona activates latent knowledge" — on strategic tasks, simple persona assignment had NO effect. Only a structured mediator that converted the persona into explicit behavioral parameters worked.
**New principle suggested:** Mediated Persona (if persona is needed, translate it into explicit behavioral parameters rather than leaving the model to interpret it), Persona Without Mediator Is Noise

---

### Paper 7: [Can LLMs Simulate Personas with Reversed Performance?](https://arxiv.org/abs/2504.06460)
**Citation:** Apr 2025, [arXiv:2504.06460](https://arxiv.org/abs/2504.06460)
**Key findings relevant to persona prompting:**
- **Most models showed <5% accuracy drop when told to simulate low-performing personas.** Personas have limited actual control over model behavior.
- **OpenAI o1 maintained 99.0% accuracy across ALL personas** including "low-performing" ones. Zero persona effect on the most capable model.
- **Larger drops on less capable models.** Claude-3.5: 99.0%→74.0% (-25pp). Llama3.1-8B: 75.0%→46.3% (-28.7pp). GPT-3.5-turbo: only 76.7%→75.0% (-1.7pp).
- **Models self-corrected despite initial persona compliance.** 25.8%-56.6% of responses showed deliberate arithmetic errors that were subsequently corrected before final answer. Internal reflection overrides persona.
- **Adding racial attributes narrowed accuracy gaps.** Claude-3.5 African American low-performer: accuracy rose from 74.0% to 89.0% (+15pp). Intersectional personas triggered safety training that overrode performance-reduction instructions.
- **Reasoning style changed even when accuracy didn't.** o1 achieved Degree of Contrast 2.7 between personas despite identical accuracy. Persona affects surface presentation, not deep reasoning.

**Supports principle:** Capability-Aware Constraints (most capable models are most resistant to persona effects — both positive and negative)
**Challenges principle:** "Role Prompting activates knowledge" — on the most capable model (o1), persona had literally zero effect on accuracy. The activation metaphor breaks down at the frontier. Persona changes how the model talks, not how it thinks.
**New principle suggested:** Persona Is Cosmetic on Capable Models (affects presentation style, not reasoning quality), Safety Training Overrides Persona (intersectional/demographic attributes trigger alignment that trumps persona instructions)

---

### Paper 8: [Prompting Inversion](https://arxiv.org/abs/2510.22251)
**Citation:** Khan, Oct 2025, [arXiv:2510.22251](https://arxiv.org/abs/2510.22251)
**Key findings:** Already reviewed in `literature-review.md`. Key data: Sculpting +4% on GPT-4o, -2.36% on GPT-5. Three failure modes: hyper-literal interpretation, inference rejection, over-constraint.

---

### Paper 9: [Prompt Engineering is Complicated and Contingent](https://arxiv.org/abs/2503.04818)
**Citation:** Mar 2025, [arXiv:2503.04818](https://arxiv.org/abs/2503.04818)
**Key findings relevant to constrained prompting:**
- **Models tested:** GPT-4o (gpt-4o-2024-08-06) and GPT-4o-mini (gpt-4o-mini-2024-07-18). **Dataset:** GPQA Diamond (198 PhD-level questions). **100 runs per question per prompt per model** (19,800 runs per condition).
- **Prompt conditions:** Baseline (formatted with system prompt "You are a very intelligent assistant"), Unformatted (no format suffix), Polite ("Please answer"), Commanding ("I order you to answer").
- **At 100% correctness threshold: both models performed only ~5pp above random guessing** (GPT-4o: RD=0.051, p=0.267; GPT-4o-mini: RD=0.045, p=0.345) — both non-significant.
- **Removing formatting constraints hurt significantly.** GPT-4o: RD=0.086 (p<0.001). GPT-4o-mini: RD=0.121 (p<0.001). Format specification is consistently valuable.
- **Polite vs Commanding: no significant aggregate differences.** Only one pairwise comparison reached significance (4o-mini "I order" vs "Please" at 51% threshold).
- **But question-level differences were highly significant (p<0.01).** Politeness helped on some questions and hurt on others — effects canceled out in aggregate. "Specific prompting techniques might work for specific questions for unclear reasons."
- **System prompt removal:** "No evidence that removing the system prompt noticeably affects average performance."

**Supports principle:** Degrees of Freedom (match approach to task), Sensitivity-Aware Authoring (question-level effects are real but unpredictable)
**Challenges principle:** System prompts as important — this paper found removing the system prompt entirely had no noticeable effect on average performance.
**New principle suggested:** Contingency Principle (any prompting technique's effect is contingent on model × task × prompt structure — never assume a technique transfers), Format Specification Is The One Universal Win (output formatting consistently helps; everything else is contingent)

---

### Paper 10: [Empirical Study on System Prompts for Code Generation](https://arxiv.org/abs/2602.15228)
**Citation:** Cheng & Mastropaolo, Feb 2026, [arXiv:2602.15228](https://arxiv.org/abs/2602.15228)
**Key findings relevant to constrained prompting:**
- **360 configurations: 4 models (GPT-OSS-20B, Qwen2.5-Coder 1.5B/7B/32B) × 5 system prompt levels (Base 21 tokens, Struct 48, Robust 69, Reason 100, Edge 117) × 3 prompting strategies (zero-shot, 3-shot fixed, 3-shot retrieval) × 2 languages (Java 230, Python 230 problems).** Benchmark: CoderEval.
- **Non-monotonic: GPT-20B Java zero-shot peaked at Struct (42.17% Pass@1), then declined** through Robust (39.57%) and fell further at Edge (37.83%). Base was 39.57%. Most constrained was NOT best.
- **Python showed same pattern:** Struct peaked at 24.35%, Base at 20.87%, Edge dropped to 16.96%. Edge-coverage prompts "distract from core task constraints."
- **Few-shot examples DEVASTATED Java performance on GPT-20B.** Base zero-shot: 39.57% → Base 3-shot fixed: 14.35% (-25.22pp). Even with Edge-level prompts, only recovered to 29.57% — still well below zero-shot baseline. "Introducing fixed examples undermines Java performance on the whole."
- **Retrieval-based 3-shot partially recovered:** GPT-20B Java Reason+retrieval reached 40.87%, close to zero-shot Struct's 42.17%.
- **Java exhibited significantly greater sensitivity than Python** to system prompt variations. Python differences were mostly non-significant.
- **McNemar's tests:** Many zero-shot prompt-level differences were NOT statistically significant (p>0.05), but few-shot degradation WAS significant with ORs from 2.17 to 5.38.

**Supports principle:** Capability-Aware Constraints (more constraints ≠ better), Constrain Outputs Not Reasoning (structural prompts > reasoning-process prompts)
**Challenges principle:** Few-shot examples as universally helpful — on Java code generation, they caused a 25pp drop. Examples can actively harm when they don't match the task.
**New principle suggested:** Constraint Ceiling (there exists a task-specific optimum beyond which more constraints reduce quality), Zero-Shot Can Beat Few-Shot on Capable Models, Language/Domain Sensitivity (Java and Python respond completely differently to the same prompting changes)

---

### Paper 11: [Thinking Before Constraining](https://arxiv.org/abs/2601.07525)
**Citation:** Jan 2026, [arXiv:2601.07525](https://arxiv.org/abs/2601.07525)
**Key findings relevant to constrained prompting:**
- **"In-Writing" approach: free reasoning followed by constrained output beat constrained-throughout.** Model reasons freely, then switches to structured generation when trigger token appears.
- **Reasoning tasks:** GSM8K LLaMA 74.7%→77.9% (+3.2pp). Shuffled Objects 27.0%→39.0% (+12pp).
- **Classification tasks:** DDXPlus LLaMA 12%→30% (+18pp). Gemma 22.9%→50.1% (+27.2pp). Sports LLaMA 69.5%→77.4% (+7.9pp).
- **Few-shot with In-Writing:** GSM8K reached 80.5%, surpassing 79.6% baseline for 8-shot CoT.
- **Minimal overhead:** Only 10-20 additional tokens and 0.5-1.5 seconds processing time.
- **Mixed on small models (1.7B):** Helped symbolic reasoning, hurt mathematical reasoning due to premature trigger tokens.

**Supports principle:** Constrain Outputs Not Reasoning (the paper's core thesis — free reasoning + constrained output is strictly better than constrained reasoning + constrained output)
**Challenges principle:** None — this paper provides the strongest empirical validation of the "constrain outputs not reasoning" principle.
**New principle suggested:** Free-Then-Constrained (let the model reason freely, then enforce structure only at output time — this is the optimal constraint architecture)

---

### Paper 12: [Two Tales of Persona in LLMs (Survey)](https://arxiv.org/abs/2406.01171)
**Citation:** Jun 2024, [arXiv:2406.01171](https://arxiv.org/abs/2406.01171)
**Key findings:**
- **Taxonomy: Role-Playing (persona assigned to LLM) vs Personalization (LLM adapts to user persona).** These are distinct research directions with different mechanisms.
- **Role-playing benefits cited:** Enhanced reasoning, planning, problem-solving. But these claims come from papers that the subsequent 2025-2026 literature has challenged.
- **Safety concerns:** Destructive behaviors emerge alongside capability gains from personas.
- **Personalization methods:** Fine-tuning, retrieval augmentation, prompting (vanilla, retrieval-augmented, profile-augmented).

---

### Paper 13: [Bias Runs Deep: Implicit Reasoning Biases in Persona-Assigned LLMs](https://arxiv.org/abs/2311.04892)
**Citation:** Nov 2023 (updated 2024), [arXiv:2311.04892](https://arxiv.org/abs/2311.04892)
**Key findings relevant to persona prompting:**
- **80% of personas demonstrated bias on ChatGPT-3.5 (June 2023). 100% on ChatGPT-3.5 (November 2023).**
- **Physically disabled persona: 35%+ average accuracy drop.** 96% of datasets showed statistically significant drops. Up to 64% drop on individual datasets (high school world history).
- **Religious persona: up to 69% drop** on college chemistry. Atheist persona: 83%+ datasets showed significant drops.
- **GPT-4-Turbo showed improvement:** Bias affecting only 42% of personas (vs 80-100% on GPT-3.5). But still up to 20% drops on certain pairs.
- **Abstention was a major mechanism.** Physically disabled persona: 58% of errors were explicit abstentions. Religious: 49%. The model refused to answer rather than answering wrong.
- **Debiasing prompts were ineffective.** "Don't make stereotypical assumptions" and "treat as equally competent" were ineffective or counterproductive.
- **24 datasets spanning math, programming, sciences, social sciences, ethics.** ~4,849 questions total.

**Supports principle:** Capability-Aware Constraints (GPT-4 less biased than GPT-3.5 — newer models are more resistant)
**Challenges principle:** "Activation framing is cheap" — it's cheap in tokens but expensive in bias. Every persona activates not just expertise but stereotypical associations. A "physically disabled" expert activates disability stereotypes that override the expertise.
**New principle suggested:** Bias Budget (every persona attribute carries an implicit bias cost — demographic attributes especially. The bias cost may exceed the activation benefit.)

---

### Paper 14: [Prompt Injection as Role Confusion](https://arxiv.org/abs/2603.12277)
**Citation:** Mar 2026, [arXiv:2603.12277](https://arxiv.org/abs/2603.12277)
**Key findings relevant to persona prompting mechanism:**
- **"Role boundaries exist at the interface but dissolve in latent space."** The model doesn't distinguish "tagged as role X" from "sounds like role X" — both produce the same internal activation.
- **Style dominates tags.** CoT-styled text maintained 85% internal "CoTness" even when wrapped in `<user>` tags. Removing stylistic markers collapsed attack success from 61% to 10%.
- **Forged reasoning achieved 79% CoTness vs genuine reasoning at 68%.** Mimicking reasoning style activated the same representations as actual reasoning.
- **Agent hijacking: standard injections 0-26% success; CoT Forgery 56-70%.** Style-based role confusion was far more effective than tag-based.
- **Attack success rose monotonically with role confusion metrics.** Lowest quantile: 9% success. Highest: 90%.

**Supports principle:** Constrain Outputs Not Reasoning (role tags are architecturally weak — the model infers role from style, not tags)
**New principle suggested:** Style Is Role (in the model's latent space, writing style IS the role assignment — explicit role tags add little beyond what style already conveys. This means persona prompts work via style activation, not role comprehension.)

---

### Paper 15: [Reliability of Persona-Conditioned LLMs as Survey Respondents](https://arxiv.org/abs/2602.18462)
**Citation:** Feb 2026 (ACM WWW '26), [arXiv:2602.18462](https://arxiv.org/abs/2602.18462)
**Key findings relevant to persona prompting:**
- **Persona prompting did NOT yield consistent aggregate improvement.** Llama-2-13B: persona slightly reduced both hard and soft similarity vs vanilla. Qwen3-4B: marginal HS increase (0.391→0.398), SS unchanged.
- **Effects were heterogeneous:** Most items showed minimal persona effects. A small subset showed disproportionate shifts.
- **"Persona prompting can redistribute errors unevenly across groups, undermining subgroup fidelity."** Even when aggregate metrics look neutral, personas shift which subgroups the model gets right/wrong.
- **Both models substantially outperformed random baseline** (HS=0.273) but persona conditioning didn't help beyond vanilla prompting.

**Supports principle:** Persona-Free Default (vanilla prompting matched or beat persona prompting)
**New principle suggested:** Error Redistribution (personas don't improve overall accuracy — they redistribute errors across subgroups. This redistribution may be worse than the original error pattern.)

---

## Effect Sizes Reference Table

| Finding | Effect Size | Paper |
|---|---|---|
| Persona degrades Llama3 reasoning | -2.96pp to -2.21pp on 7/12 datasets | [Gupta 2024](https://arxiv.org/abs/2408.08631) |
| Jekyll & Hyde ensemble vs base | +9.98% avg across 12 datasets (GPT-4) | [Gupta 2024](https://arxiv.org/abs/2408.08631) |
| 162 personas vs no-persona control | No significant improvement | [Zheng 2023/2026](https://arxiv.org/abs/2311.10054) |
| Irrelevant persona details | Up to -30pp accuracy, degraded 14-59% of tasks | [Dong 2025](https://arxiv.org/abs/2508.19764) |
| Expert persona negative rate | 0-22% of tasks (even "correct" expert framing) | [Dong 2025](https://arxiv.org/abs/2508.19764) |
| Persona mitigation on small models | Generally worsened performance | [Dong 2025](https://arxiv.org/abs/2508.19764) |
| Physically disabled persona bias | -35%+ avg, up to -64pp on individual datasets | [Gupta 2023](https://arxiv.org/abs/2311.04892) |
| Religious persona bias | Up to -69pp on college chemistry | [Gupta 2023](https://arxiv.org/abs/2311.04892) |
| High School persona VDA reduction | -9% vs baseline | [Costello 2025](https://arxiv.org/abs/2506.20020) |
| Political persona motivated reasoning | 90% more likely correct when evidence aligns with beliefs | [Costello 2025](https://arxiv.org/abs/2506.20020) |
| o1 resistance to persona | 99.0% accuracy across ALL personas (zero effect) | [2504.06460](https://arxiv.org/abs/2504.06460) |
| Strategic persona with mediator | ρ=0.49*** (strategicThinker) | [2512.06867](https://arxiv.org/abs/2512.06867) |
| Strategic persona without mediator | ρ=0.08 (not significant) | [2512.06867](https://arxiv.org/abs/2512.06867) |
| Free-then-constrained vs constrained | +12pp to +27.2pp on classification | [2601.07525](https://arxiv.org/abs/2601.07525) |
| More constraint tokens (21→117) for code gen | Non-monotonic: peak at 48 tokens (42.17%), declined to 37.83% at 117 | [Cheng 2026](https://arxiv.org/abs/2602.15228) |
| Few-shot examples on Java code gen | -25.22pp (39.57%→14.35%) on GPT-OSS-20B | [Cheng 2026](https://arxiv.org/abs/2602.15228) |
| Removing system prompt entirely | No noticeable effect on avg performance | [2503.04818](https://arxiv.org/abs/2503.04818) |
| Removing output formatting | -8.6pp GPT-4o, -12.1pp GPT-4o-mini (p<0.001) | [2503.04818](https://arxiv.org/abs/2503.04818) |
| Polite vs commanding prompts | No significant aggregate difference | [2503.04818](https://arxiv.org/abs/2503.04818) |
| Qwen3-32B with personas on HateXplain | ALL personas worse than baseline; -9.2% label prediction | [Yang 2026](https://arxiv.org/abs/2601.20757) |
| Inter-persona agreement (political view) | α=0.52 (Qwen3) to 0.81 (GPT-OSS) — low steering | [Yang 2026](https://arxiv.org/abs/2601.20757) |
| Style vs tag for role assignment | 85% CoTness retained despite wrong tags | [2603.12277](https://arxiv.org/abs/2603.12277) |
| Persona conditioning for surveys | No aggregate improvement (Llama-2: -0.004 HS, Qwen: +0.007 HS) | [2602.18462](https://arxiv.org/abs/2602.18462) |

---

## Synthesis: When Does Persona Prompting Help?

### It helps (narrow conditions):
1. **Symbolic/structural tasks** where the persona activates a specific problem-solving strategy (Last Letter: +73pp with GPT-4). But even here, Jekyll & Hyde ensemble is strictly better.
2. **Subjective classification** (hate speech detection) where the task has no ground truth and persona provides a perspective. But rationale quality degrades.
3. **Strategic reasoning** — ONLY when a mediator translates persona into explicit behavioral heuristics. Without mediator: no effect.

### It doesn't help (broad conditions):
1. **Factual questions** — 162 personas, 9 models, 2,410 questions: no improvement (Zheng 2023/2026).
2. **Most capable models** — o1 maintains 99% accuracy regardless of persona. GPT-4-Turbo shows bias in only 42% of personas vs 100% on GPT-3.5.
3. **Survey alignment** — persona conditioning didn't improve reliability over vanilla prompting.

### It actively hurts:
1. **Commonsense reasoning** — personas degrade performance on 7/12 datasets for Llama3.
2. **Judgment tasks** — personas import motivated reasoning biases (90% congruence effect on political evidence evaluation).
3. **Irrelevant persona details** — up to 30pp drops from including non-task-relevant attributes.
4. **Demographic personas** — physically disabled (-35%+), religious (-69pp worst case), high school student (-9% VDA).

### The mechanism is cosmetic, not cognitive:
- o1 shows zero accuracy change across personas but Degree of Contrast 2.7 — persona changes *how the model writes*, not *how it reasons*.
- In latent space, "sounds like role X" and "tagged as role X" produce identical activation (2603.12277). Persona is style, not cognition.
- Models self-correct despite initial persona compliance (25.8-56.6% of responses show deliberate errors later corrected).

### The emerging best practice:
1. **Don't use persona by default.** Start with no persona. Add only if measured improvement on your specific task.
2. **If you must use persona, keep it minimal.** Only task-relevant attributes. Every irrelevant detail risks a 30pp drop.
3. **Prefer audience framing over identity framing.** "Answer as if explaining to a doctor" > "You are a doctor."
4. **Constrain outputs, not reasoning.** Free-then-constrained beats constrained-throughout by 12-27pp on classification tasks.
5. **On capable models, persona is increasingly cosmetic.** The more capable the model, the less persona affects actual reasoning quality. Plan for persona to become irrelevant as models improve.

---

## Data Coverage Notes

All 15 papers now have full or near-full quantitative extraction. Paper 8 (Prompting Inversion) was already fully reviewed in `literature-review.md`.

PDFs for papers 5, 9, and 10 were extracted via `pdftotext` (poppler) after HTML versions returned 404. Paper 12 (Two Tales survey) has taxonomy but limited quantitative data by nature (it's a survey).
