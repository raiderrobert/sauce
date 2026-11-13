---
name: designing-product-ui
description: "Use when designing a new screen, choosing the visual design of a web app, SaaS product, dashboard, landing page, or mobile or desktop app, or when asked to redesign, restyle, polish, or make a UI look better, critique a mockup, give design or UX feedback, or do a design review or UX audit of a UI that looks ugly, generic, amateur, cluttered, or AI-generated. Gives cited, testable heuristics (spacing values, chart rules, dark-mode steps, state coverage) rather than an aesthetic direction, covering layout, hierarchy, typography, color, dark mode, icons, charts, tables, pricing pages, forms, modals, sidebars, empty and loading states, navigation, search, onboarding, AI chat interfaces, and animation. Not for pure frontend logic or bug fixes."
---

# Designing Product UI

## Overview

Concrete UI/UX heuristics, each cited to the source and timestamp it came from. Use them to make design decisions while building, and as a checklist when reviewing a screen.

They are practitioner opinions, not standards. Precedence when they conflict:

1. Accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and platform guidelines.
2. The product's existing design system.
3. These rules.

## How the topic files work

- Read each file whose topic the task touches; a single component often spans several (a button touches components, color and motion).
- Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. All current sources are videos by one designer, so count reflects how often the advice recurs, not independent agreement.
- **App UI** tags rules for product screens only; **Marketing** tags rules for landing pages and websites only; untagged rules apply to both.
- *Note:* text is an editorial caveat (usually accessibility or a CSS translation) that the source did not state. Where it corrects a source number, follow the Note.
- Each rule ends with citations like `[jain/dashboard-flaws 0:44]`. The link definitions at the bottom of each file open the source at that moment.

## Routing

| Working on | Read |
|------------|------|
| Spacing, grids, alignment, visual hierarchy, card padding | `./layout-and-hierarchy.md` |
| Fonts, type scales, responsive type, line height, letter spacing, text tiers | `./typography.md` |
| Palettes, accent use, neutrals, semantic colors, dark mode, contrast | `./color.md` |
| Shadows, borders, corner radius, icon style and libraries, gradients, imagery, texture | `./depth-and-polish.md` |
| Buttons, chips, icon labels and tooltips, forms and signup, inputs, cards, carousels, modals, popovers, toasts, delete and undo, autosave, AI chat and prompt interfaces, and empty, loading, error and success states | `./components-and-states.md` |
| Dashboards, charts, KPIs, tables, lists, pricing pages and billing | `./data-and-dashboards.md` |
| Sidebars, tabs, overflow menus, search, what to show versus hide, onboarding and first run, gamification, website navbars, dropdowns and mega menus | `./navigation-and-disclosure.md` |
| Animation, transitions, easing and durations, hover effects, drag and swipe feedback, loaders, scroll effects | `./motion.md` |
| Mobile apps, gestures, thumb zones, tab bars, bottom sheets, macOS and desktop apps | `./mobile-and-desktop.md` |
| Landing pages, heroes, marketing copy, footers, social proof (navbars are in navigation-and-disclosure) | `./landing-pages.md` |
| How to approach the work: references, generated UI, reviewing at real size | `./process.md` |
| Adding a new source, or the citation format | `./references/index.md` |
| Full details of every cited source | `./references/bibliography.md` |

## Core Checklist

Rules a capable model tends to miss without this skill, found by comparing reviews and builds with and without it. Check these on any screen; the routed file holds details and citations.

- Use only assets, data and social proof the user supplied. Where a rule calls for a product screenshot, customer logos or testimonials and none were given, leave a labeled placeholder and say so; never invent them. (editorial)
- Rank each dashboard module as high, mid or low priority before arranging; put the most important higher and farther left. (`data-and-dashboards.md`)
- Draw line charts with straight segments, never smoothed or faded; give full charts grid lines, axis values and a time-frame control. (`data-and-dashboards.md`)
- Show each piece of data once: no KPI repeated across cards, pages or the sidebar. (`data-and-dashboards.md`)
- Build hierarchy with weight and color/opacity contrast before size; large headings rely on size, not extra bold. (`layout-and-hierarchy.md`)
- Tint grays, borders and dark surfaces toward the brand hue; a white or near-white page is fine in light mode. (`color.md`)
- In product UI stay almost entirely neutral with a tiny accent, and reserve the accent for the one action that matters. (`color.md`)
- In dark mode, make each raised surface lighter, and space neutral steps about twice as far apart as in light mode. (`color.md`)
- Soften shadows (lower opacity, much larger blur), and set a nested element's radius to the outer radius minus the gap. (`depth-and-polish.md`)
- Skip confirmation modals for routine deletes: delete immediately and offer undo. (`components-and-states.md`)
- Place each action on a spectrum of explicitness: primary actions visible and labeled, minor ones revealed on hover or focus. (`navigation-and-disclosure.md`)
- On landing pages, lead with one ~7-word headline saying exactly what the product does, and show the real product. (`landing-pages.md`)

## Reviewing a screen

Report each problem as one line: the element, what is wrong, the rule it breaks in your own words, and the rule's first citation. Rules are paraphrases, so don't quote them. If the violated part is a *Note:* (editorial, usually accessibility), cite the WCAG success criterion or write "editorial" instead of the source.

Group by severity, most impactful first within each group:

- **Blocks use:** anything that stops a user from understanding or completing a task: accessibility failures, missing states, misleading signals (a destructive action that doesn't look destructive, an unreadable chart), broken hierarchy, navigation or disclosure.
- **Looks unfinished:** everything else: spacing, typography, color harmony, depth, motion polish. Report the ten most visible; collapse the rest into one summary line.

```markdown
- Blocks use: The Delete button is brand purple like Edit and Share, so it doesn't signal destruction. Breaks: color destructive actions red. [jain/60-30-10-rule 4:50]
- Blocks use: Body text is #999 on white, about 2.8:1. Breaks: text contrast. WCAG 1.4.3
- Looks unfinished: Card padding varies between 12px and 20px across the row. Breaks: identical card padding within a view. [jain/beginner-mistakes 2:38]
```

## Common Mistakes

Tells that a UI was built by a beginner or generated without design review, beyond the checklist above.

| Mistake | Fix |
|---------|-----|
| Nested cards, borders on borders, stacked radii | Group with spacing or one simple border (`depth-and-polish.md`) |
| The same KPIs repeated across pages | Show each piece of data once, where it is used (`data-and-dashboards.md`) |
| Two equal filled buttons in one hero or header | One primary action; make the second an outline or text button (`layout-and-hierarchy.md`) |
| Centered paragraphs, lists or table data | Left-align text, right-align numbers; center only short display text (`layout-and-hierarchy.md`) |
| The first layout that came to mind, built as is | Choose the layout and card design and state why before building (`process.md`) |
| Disabled buttons that are unreadable, or focus that looks like selected | Muted but readable disabled text; a distinct focus ring at 3:1 (`components-and-states.md`) |
| Status shown by color alone | Pair the color with an icon or label (`color.md`) |
