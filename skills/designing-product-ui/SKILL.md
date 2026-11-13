---
name: designing-product-ui
description: "Use when designing a new screen, choosing the visual design of a web app, SaaS product, dashboard, landing page, or mobile or desktop app, or when asked to make a UI look better, give design or UX feedback, or do a design review of a UI that looks ugly, generic, amateur, cluttered, or AI-generated. Gives cited, opinionated heuristics for spacing, layout, hierarchy, typography, color, dark mode, icons, charts, tables, pricing pages, forms, modals, sidebars, empty and loading states, navigation, search, onboarding, AI chat interfaces, and animation. Not for pure frontend logic or bug fixes."
---

# Designing Product UI

## Overview

Concrete UI/UX heuristics, each cited to the source and timestamp it came from. Use them to make design decisions while building, and as a checklist when reviewing a screen.

They are practitioner opinions, not standards. Precedence when they conflict:

1. Accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and platform guidelines.
2. The product's existing design system.
3. These rules.

Last tested November 2026 with Claude Opus 5.5, in review mode only: given a deliberately flawed dashboard, it reported 35 findings in the format below, and every citation label matched a rule in the topic files. Not yet tested in build mode or against a no-skill baseline.

## How the topic files work

- Read each file whose topic the task touches; a single component often spans several (a button touches components, color and motion).
- Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. All current sources are videos by one designer, so count reflects how often the advice recurs, not independent agreement.
- **App UI** tags rules for product screens only; **Marketing** tags rules for landing pages and websites only; untagged rules apply to both.
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

High-impact rules, each recurring in three or more videos. Check these first on any screen. The routed file holds the details and citations.

- Rank every element by importance, then show rank with weight, color and opacity contrast, not size alone. (`layout-and-hierarchy.md`)
- Put all spacing on a 4px or 8px grid; group with spacing rather than containers and dividers. (`layout-and-hierarchy.md`)
- Use one sans-serif font for product UI and two text tiers: primary at full strength, secondary at ~55-70% opacity that still passes 4.5:1. (`typography.md`)
- Tint neutrals toward the brand hue instead of pure black or white. (`color.md`)
- Use color for meaning (status, urgency, the one primary action), never decoration; keep UI icons neutral. (`color.md`)
- Include semantic colors even in monochrome palettes, and check every colored pair against WCAG contrast. (`color.md`)
- In dark mode, make raised surfaces lighter and space neutral steps about twice as far apart as in light mode. (`color.md`)
- Soften shadows (low opacity, large blur) and use one icon library throughout. (`depth-and-polish.md`)
- Give every action a visible response, and every screen empty, loading, success and error states. (`components-and-states.md`)
- Give charts grid lines and axis values; let the data the dashboard must show decide its layout. (`data-and-dashboards.md`)
- Show only what users need now; keep primary actions visible and labeled and reveal minor ones on hover or focus. (`navigation-and-disclosure.md`)
- Animate only for clarity, feedback or focus, and keep it subtle. (`motion.md`)
- On landing pages, show the real product and lead with a short headline that says exactly what it does. (`landing-pages.md`)

## Reviewing a screen

Report each problem as one line: the element, the rule it breaks, and the rule's first citation. For an accessibility failure, cite the WCAG success criterion instead (for example WCAG 1.4.3 for text contrast). Group by severity:

- **Blocks use:** anything that stops a user from understanding or completing a task: accessibility failures, missing states, misleading signals (a destructive action that doesn't look destructive, an unreadable chart), broken hierarchy, navigation or disclosure.
- **Looks unfinished:** everything else: spacing, typography, color harmony, depth, motion polish.

```markdown
- Blocks use: Delete button uses the brand color, so it doesn't signal destruction. "Color destructive actions such as delete red, never the brand color." [jain/color-mistakes 5:51]
- Looks unfinished: Card padding varies between 12px and 20px across the row. "Keep card and chip padding generous and identical across a view." [jain/dashboard-ui 6:36]
```

## Common Mistakes

Tells that a UI was built by a beginner or generated without design review, beyond the checklist above.

| Mistake | Fix |
|---------|-----|
| Nested cards, borders on borders, stacked radii | Group with spacing or one simple border (`depth-and-polish.md`) |
| The same KPIs repeated across pages | Show each piece of data once, where it is used (`data-and-dashboards.md`) |
| Two equal filled buttons in one hero or header | One primary action; make the second an outline or text button (`layout-and-hierarchy.md`) |
| Centered paragraphs, lists or table data | Left-align text, right-align numbers; center only short display text (`layout-and-hierarchy.md`) |
| Generated layout and colors accepted as is | Decide layout and color deliberately, then build (`process.md`) |
| Disabled buttons that are unreadable, or focus that looks like selected | Muted but readable disabled text; a distinct focus ring at 3:1 (`components-and-states.md`) |
| Status shown by color alone | Pair the color with an icon or label (`color.md`) |
