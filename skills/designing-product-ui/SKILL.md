---
name: designing-product-ui
description: "Use when designing a new screen, choosing the visual design of a web app, SaaS product, dashboard, landing page, or mobile or desktop app, or when asked to redesign, restyle, polish, or make a UI look better, critique a mockup, give design or UX feedback, or do a design review or UX audit of a UI that looks ugly, generic, amateur, cluttered, or AI-generated, or feels sluggish to interact with, flat, or lifeless, or should feel snappier, more satisfying, or more premium. Gives cited, testable heuristics rather than an aesthetic direction, covering layout, hierarchy, typography, color, dark mode, icons, charts, tables, pricing pages, forms, modals, sidebars, empty and loading states, search, navigation, onboarding, AI chat interfaces, animation, and interaction feel in apps (feedback, microinteractions, game feel, keyboard shortcuts, Cmd+K command palettes, haptics, waits, delight). Not for pure frontend logic, bugs unrelated to how the UI looks or responds, or building games."
---

# Designing Product UI

## Overview

Concrete UI/UX heuristics, each cited to the source it came from (a video timestamp, a passage in an essay or transcript, or a PDF page). Use them to make design decisions while building, and as a checklist when reviewing a screen.

They are practitioner opinions, not standards. Precedence when they conflict:

1. The user's stated scope. When a rule implies a feature, data or flourish the user didn't ask for (a comparison line, bulk actions, version history, a command menu, easter eggs, reward imagery, humorous copy, sound), propose it rather than build it. Fixing an existing feature that misbehaves (an undo that skips the last action, a shortcut that fails silently) is in scope; fix it.
2. Accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and platform guidelines.
3. The product's existing design system.
4. These rules.

## How the topic files work

- Read each file whose topic the task touches; a single component often spans several (a button touches components, color, motion and interaction feel).
- Within a section, base rules come first, then refinements and exceptions. `references/bibliography.md` lists every source.
- **App UI** tags rules for product screens only; **Marketing** tags rules for landing pages and websites only; untagged rules apply to both. **From games** marks a product-UI rule translated from a game-design principle; follow the rule. The principle the source stated is under "Source principles" in `references/links/<topic>.md`. *(Editorial.)* marks a rule with no source, such as the feedback budget.
- *Note:* text is an editorial caveat (usually accessibility, a CSS translation, or how a game principle applies to apps) that the source did not state, or a summary of where sources differ. Where it corrects a source number, follow the Note. In a rule, "(source: X)" gives the source's number where the rule differs; follow the rule.
- Each rule ends with citations: `[jain/dashboard-flaws 0:44]` for a video timestamp, `[freiberg/invisible-details ¶the-selected-item-briefly]` for a passage in an essay or transcript, or `[buell-norton/labor-illusion ¶p2]` for a PDF page. The links live in `references/links/<topic>.md`; when you need a clickable link, as in review output, grep the label there instead of reading the whole file.

## Routing

| Working on | Read |
|------------|------|
| Spacing, grids, alignment, visual hierarchy, card padding | `./layout-and-hierarchy.md` |
| Fonts, type scales, responsive type, line height, letter spacing, text tiers | `./typography.md` |
| Palettes, accent use, neutrals, semantic colors, dark mode, contrast | `./color.md` |
| Shadows, borders, corner radius, icon style and libraries, gradients, imagery, texture | `./depth-and-polish.md` |
| Buttons, chips, icon labels and tooltips, forms and signup, inputs, cards, carousels, modals, popovers, toasts, delete and undo, autosave, AI chat and prompt interfaces, search fields and in-page menus or submenus, hover, pressed, disabled, focus and selected states, and empty, loading, error and success states | `./components-and-states.md` |
| Dashboards, charts, KPIs, tables, lists, pricing pages and billing | `./data-and-dashboards.md` |
| Sidebars, tabs (when to use them and how to mark the selected one), overflow menus, search placement and scope, what to show versus hide, onboarding and first run, gamification, website navbars, dropdowns and mega menus | `./navigation-and-disclosure.md` |
| Animation, transitions, easing and durations, which triggers and surfaces animate, how menus and panels open, motion that shows where things came from, hover and press effects, drag, swipe, touch tracking and rubber-banding, loader animations, scroll effects | `./motion.md` |
| How each action feels: acknowledging clicks, keypresses and commands, speed and perceived performance, flow, keyboard shortcuts and command menus, how long a wait needs which indicator, optimistic updates, proportional feedback, sound, haptics, tone and personality, delight and when to hold back | `./interaction-feel.md` |
| Mobile apps, gestures, thumb zones, tab bars, bottom sheets, responsive layouts and breakpoints, macOS and desktop apps | `./mobile-and-desktop.md` |
| Landing pages, heroes, marketing copy, footers, social proof (navbars are in navigation-and-disclosure) | `./landing-pages.md` |
| How to approach the work: references, generated UI, reviewing at real size, redesigning a tool people use daily | `./process.md` |
| Adding a new source, or the citation format | `./references/index.md` |
| Full details of every cited source | `./references/bibliography.md` |

## Core Checklist

Rules chosen because a capable model tends to skip them. Some come from with/without comparisons (see `references/index.md`); the rest are judgment. Check these on any screen; the routed file holds details and citations.

- Use only assets, social proof and claims the user supplied (logos, testimonials, customer counts, metrics presented as fact). Where a rule calls for a product screenshot, customer logos or testimonials and none were given, leave a labeled placeholder and say so; never invent them. Realistic sample data for reviewing a prototype is fine (`process.md`). (editorial)
- Rank each dashboard module as high, mid or low priority before arranging; put the most important higher and farther left. (`data-and-dashboards.md`)
- Draw line charts with straight segments, never smoothed or faded; give full charts grid lines and axis values, and a time-frame control when the data spans more than one useful time frame. (`data-and-dashboards.md`)
- Show each piece of data once: no duplicated KPI rows across pages, no chart restating percentages already shown. (`data-and-dashboards.md`)
- Build hierarchy with weight and color/opacity contrast before size; large headings rely on size, not extra bold. (`layout-and-hierarchy.md`, `typography.md`)
- Tint grays, borders and dark surfaces toward the brand hue, but keep grays neutral beside a warm primary such as orange; a white or near-white page is fine in light mode. (`color.md`)
- In product UI stay almost entirely neutral with a tiny accent, used mainly for the primary action and active or selected states, and sparingly for the one most important data type. (`color.md`)
- In dark mode, make each raised surface lighter, and space neutral steps about twice as far apart as in light mode. (`color.md`)
- Soften shadows (lower opacity, blur about 1.3-2× the y-offset), and set a nested element's radius to the outer radius minus the gap. (`depth-and-polish.md`)
- Skip confirmation modals for routine deletes: delete immediately and offer undo. (`components-and-states.md`)
- Give every command the app defines (shortcuts, submit, undo) and every disabled control a specific response, even when there's nothing to do ("Nothing to undo"; list boundaries may stay silent); never stack repeats. (`interaction-feel.md`)
- Trigger wins: anything opened or changed from the keyboard (any keydown, including Enter or Space on a focused control) appears without movement, even a modal. (`motion.md`, for the allowed fades and which surfaces and menus animate)
- Place each action on a spectrum of explicitness: primary actions visible and labeled, minor ones revealed on hover or focus and also reachable from a menu (touch has no hover). (`navigation-and-disclosure.md`)
- On landing pages, lead with one ~7-word headline saying exactly what the product does, and show the real product. (`landing-pages.md`)

## Reviewing a screen

Report each problem as one line: the element, what is wrong, the rule it breaks in your own words, and the rule's first citation as an inline link (grep the label in `references/links/<topic>.md` for its URL). Rules are paraphrases, so don't quote them. If the violated part is an editorial *Note:* (usually accessibility), cite the WCAG success criterion or write "editorial" instead of the source; if the Note summarizes where sources differ, cite the rule's first citation. For a **From games** rule, cite its first citation and add "(translated from a game principle)". For an *(Editorial.)* rule, write "editorial".

Group by severity, in this order and most impactful first within each group. When a problem fits two groups, use the earlier one:

- **Blocks use:** anything that stops a user from understanding or completing a task: accessibility failures, missing states, misleading signals (a primary destructive action, such as Delete in a confirmation, that doesn't look destructive, an unreadable chart), broken hierarchy, navigation or disclosure.
- **Feels wrong:** feedback that misses the budget in either direction. Too little: actions with no visible acknowledgement, unannounced changes, slow or blocking feedback. Too much: motion on keyboard or high-frequency actions, confetti or layered effects on routine actions or in a pro tool, sound the product didn't already have and the user didn't ask for. Judge feel from the running app or the event handlers and states in code; a screenshot can't show it. If you couldn't run or read it, say "feel not verified".
- **Looks unfinished:** everything else: spacing, typography, color harmony, depth, motion polish. Report the ten most visible; collapse the rest into one summary line.

```markdown
- Blocks use: The Delete button in the delete confirmation is brand purple, so it doesn't signal destruction. Breaks: color a primary destructive action red, never the brand color. [jain/60-30-10-rule 4:35](https://youtu.be/66oOi9OLMCw?t=275)
- Blocks use: Body text is #999 on white, about 2.8:1. Breaks: text contrast. WCAG 1.4.3
- Feels wrong: Pressing ⌘Z with nothing to undo does nothing visible. Breaks: give unsupported commands a specific response, not silence (translated from a game principle). [jonasson-purho/juice-it-or-lose-it 1:15](https://youtu.be/Fy0aCDmgnxg?t=75)
- Feels wrong: The command menu slides in from the top on every ⌘K. Breaks: keyboard-opened surfaces appear instantly. [freiberg/invisible-details ¶it-feels-right-to](https://rauno.me/craft/interaction-design#:~:text=it%20feels%20right%20to%20not%20animate)
- Feels wrong: Confetti fires on every task check in an issue tracker. Breaks: routine clicks get one small cue. editorial
- Looks unfinished: Card padding varies between 12px and 20px across the row. Breaks: identical card padding within a view. [jain/beginner-mistakes 2:38](https://youtu.be/AH_ugxmLeUM?t=158)
```

## Common Mistakes

Tells that a UI was built by a beginner or generated without design review, beyond the checklist above.

| Mistake | Fix |
|---------|-----|
| Nested cards, borders on borders, stacked radii | Group with spacing or one simple border; a control nested in a container follows the concentric radius rule (`depth-and-polish.md`) |
| Two equal filled buttons in one hero or header | One primary action; make the second an outline, text or other secondary-style button (`layout-and-hierarchy.md`, `components-and-states.md`) |
| Centered paragraphs, lists or table data | Left-align text, right-align numbers in columns (stat blocks stay left-aligned); center only short display text (`layout-and-hierarchy.md`) |
| The first layout that came to mind, built as is | Check the layout against how the content ranks and change it if it doesn't fit (`process.md`) |
| Disabled buttons that are unreadable, or focus that looks like selected | Muted but readable disabled text; a distinct focus ring at 3:1 (`components-and-states.md`) |
| Status shown by color alone | Pair the color with an icon or label (`color.md`) |
