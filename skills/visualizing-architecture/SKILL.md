---
name: visualizing-architecture
description: "Use when a user wants to visually design or iterate on system architecture, inspect component relationships, or edit a Mermaid architecture diagram with the assistant. Produces source-grounded, locally rendered diagrams using Pele rather than a custom diagram language or a framework questionnaire."
---

# Visualizing Architecture

Help the user look at a system and change the picture together. **Mermaid is the editable source; Pele handles rendering and layout.** The user can work directly in the browser source editor or in a `.mmd` file. Do not maintain a parallel coordinate-based model.

## Resources

| Need | Resource |
| --- | --- |
| Setup, CLI, checks and package usage | [README.md](README.md) |
| Mermaid conventions and Pele differences | [reference/mermaid.md](reference/mermaid.md) |
| Local browser sessions and safe live updates | [reference/session.md](reference/session.md) |
| One neutral starting example | [examples/service-map.mmd](examples/service-map.mmd) |

All runtime code and tests are TypeScript in this skill directory. Use **pnpm**, not npm/npx or Python wrappers. Resolve paths relative to this file, not the current project. The package requires Node 22+.

## Start from the system, not a replacement

- Read relevant source, configuration types, schemas and existing decisions. Do not inspect credential files or unrelated session histories.
- When another implementation is the working baseline, show it before inventing replacements. Code presence, user reports, accepted designs and live deployment evidence are different things.
- Label components **existing**, **proposed** or **uncertain** in the diagram text. Put evidence and limitations in adjacent prose or Mermaid `%%` comments; do not fabricate references.
- A box denotes a responsibility, not necessarily a new service, package or deployment.
- Start with a readable overview, usually 5–9 components. Use focused diagrams when detail becomes useful instead of making one enormous graph.

## Produce an editable view

Set `SKILL_DIR` to this directory. Install and build once with the commands in the README. Put project diagrams in approved ignored scratch space or private state **outside this reusable skill**.

```bash
pnpm --dir "$SKILL_DIR" render "$SOURCE_MMD" \
  --output "$SCREEN_HTML" --title "System architecture" \
  --document-id "system-architecture"
```

Use the same document ID for revisions of a view; use different IDs for unrelated diagrams. The output is self-contained HTML with Pele bundled locally, a Mermaid editor, preview, zoom, and Mermaid/SVG downloads. No CDN or remote rendering service receives the architecture. Links and external images in diagrams are disabled.

Use the optional brainstorming visual companion for same-tab live reload. If unavailable, open the HTML locally and use manual refresh. Do not build another server or silently upload a private diagram to an online playground.

## Collaborate without taking the drawing away

- Let the user draw, edit or explain. Ask what to inspect or change, not which formal architecture framework to adopt.
- Preserve stable component IDs; let Pele place boxes and route edges. Explain important changes briefly instead of narrating every arrow.
- The source editor renders on **Render preview** or **Ctrl/⌘+Enter**. Browser edits are drafts, not writes to the `.mmd` file and not an event stream the assistant can read.
- If the user edits in the browser, ask for the downloaded `.mmd`, a local path, or pasted source before making further edits. Do not overwrite their drawing from an older disk copy.
- Browser drafts survive reloads when session storage is available. A new supplied revision does not silently replace a dirty draft; the page offers an explicit reset. Downloads are still required for durable saving.
- Mermaid callbacks/custom inspector panels are not part of this renderer. Use labels, subgraphs, focused diagrams and accompanying explanations rather than depending on unsupported click-to-JavaScript behavior.

Keep uncertain architecture and unresolved questions visibly distinct from implementation. Do not turn a design conversation into code changes, deployments or autonomous agent work without a separate request. Record settled decisions in the project's durable architecture documentation, not only in a scratch diagram.

## Verify the actual view

The CLI validates Mermaid through Pele before publishing. Inspect the rendered overview and a narrow viewport in a real browser when available. Check editing, an invalid source, downloads, and draft preservation across updates. Watch for ambiguous crossings or text that is too small: automatic layout is not automatic good communication.

Do not claim browser verification from syntax checks alone. Read the companion's actual connection information before linking to it. Preserve its complete authenticated URL, but never commit session keys or private diagrams into this skill repository.

A useful handoff is short: **“Here is the editable view. Existing and proposed parts are labeled separately. What should we change?”**
