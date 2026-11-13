---
name: designing-product-ui
description: "Use when designing, building, styling, or reviewing the UI of a web app, SaaS product, dashboard, landing page, or mobile or desktop app, or when a UI looks generic, amateur, cluttered, or AI-generated. Gives cited, opinionated heuristics for layout, hierarchy, typography, color, dark mode, charts, tables, components, states, navigation, onboarding, and motion."
---

# Designing Product UI

## Overview

Concrete UI/UX heuristics, each cited to the source and timestamp it came from. Use them to make design decisions while building, and as a checklist when reviewing a screen.

They are practitioner opinions, not standards. Precedence when they conflict:

1. Accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and platform guidelines.
2. The product's existing design system.
3. These rules.

## How the topic files work

- Read every file whose topic the task touches. A single component often spans several (a button touches components, color, motion).
- Rules within a section are ordered by how many sources back them, so earlier rules are more established.
- **App UI** tags rules for product screens only; **Marketing** tags rules for landing pages and websites only; untagged rules apply to both.
- Each rule ends with citations like `[jain/dashboard-flaws 0:44]`. The link definitions at the bottom of each file open the source at that moment.

## Routing

| Working on | Read |
|------------|------|
| Spacing, grids, alignment, visual hierarchy, card padding | `./layout-and-hierarchy.md` |
| Fonts, type scales, line height, letter spacing, text tiers | `./typography.md` |
| Palettes, accent use, neutrals, semantic colors, dark mode, contrast | `./color.md` |
| Shadows, borders, corner radius, icons, gradients, imagery, texture | `./depth-and-polish.md` |
| Buttons, inputs, cards, modals, popovers, tooltips, toasts, and empty, loading, error and success states | `./components-and-states.md` |
| Dashboards, charts, KPIs, tables, lists, pricing and billing | `./data-and-dashboards.md` |
| Sidebars, tabs, menus, what to show versus hide, onboarding and first run | `./navigation-and-disclosure.md` |
| Animation, transitions, easing, hover effects, loaders, scroll effects | `./motion.md` |
| Mobile apps, gestures, thumb zones, macOS and desktop apps | `./mobile-and-desktop.md` |
| Landing pages, heroes, marketing copy, social proof | `./landing-pages.md` |
| How to approach the work: intent, flows, wireframes, design systems | `./process.md` |
| Where a rule came from, or adding a new source | `./references/index.md` |

## Core Checklist

High-impact rules, each backed by three or more sources. Check these first on any screen. The routed file holds the details and citations.

- Rank every element by importance, then show rank with weight, color and opacity contrast, not size alone. (`layout-and-hierarchy.md`)
- Put all spacing on a 4px or 8px grid; group with spacing rather than containers and dividers. (`layout-and-hierarchy.md`)
- Use one sans-serif font for product UI and two text tiers: primary at full strength, secondary at ~55-70% opacity that still passes 4.5:1. (`typography.md`)
- Tint neutrals toward the brand hue instead of pure black or white. (`color.md`)
- Use color for meaning (status, urgency, the one primary action), never decoration; keep UI icons neutral. (`color.md`)
- Include semantic colors even in monochrome palettes, and check every colored pair against WCAG contrast. (`color.md`)
- In dark mode, make raised surfaces lighter and space neutral steps about twice as far apart as in light mode. (`color.md`)
- Soften shadows (~15-20% opacity, large blur) and use one icon library throughout. (`depth-and-polish.md`)
- Give every action a visible response, and every screen empty, loading, success and error states. (`components-and-states.md`)
- Give charts grid lines and axis values; let the data the dashboard must show decide its layout. (`data-and-dashboards.md`)
- Show only what users need now; keep primary actions visible and labeled and reveal minor ones on hover or focus. (`navigation-and-disclosure.md`)
- Animate only for clarity, feedback or focus, and keep it subtle. (`motion.md`)
- On landing pages, show the real product and lead with a short headline that says exactly what it does. (`landing-pages.md`)

## Reviewing a screen

Report each problem as one line: the element, the rule it breaks, and the rule's citation. Group by severity:

- **Blocks use:** accessibility failures, missing states, broken hierarchy.
- **Looks unfinished:** spacing, color, typography, polish.

```markdown
- Blocks use: Delete button uses the brand color, not red. "Color destructive actions such as delete red, never the brand color." [jain/color-mistakes 5:51]
```

## Common Mistakes

Tells that a UI was built by a beginner or generated without design review.

| Mistake | Fix |
|---------|-----|
| Brand color on everything, several accents competing | Reserve the accent for the one action that matters; tint low-importance elements |
| Emojis or mixed icon sets | One icon library with matching stroke, fill and size |
| Charts without axes or grid lines, or decorative chart types | Simple line or bar charts with grid lines, axis values and labels |
| Blank screens when there is no data | Empty state with a message and a call to action |
| Every action shown as a permanent button | Progressive disclosure: hover and focus reveals, popovers, menus |
| Icons with no labels or tooltips | Text labels, or tooltips for icon-only controls |
| Nested cards, borders on borders, heavy default shadows | One simple border or a soft shadow |
| The same KPIs repeated across pages | Show each piece of data once, where it is used |
| Generated layout and colors accepted as is | Decide layout and color deliberately, then build |
| Dark mode made by inverting light mode | Design dark mode as its own palette with lighter raised surfaces |
