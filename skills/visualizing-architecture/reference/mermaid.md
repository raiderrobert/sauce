# Mermaid source, Pele rendering

Use ordinary Mermaid `.mmd` files as the source of truth. Pele supplies layout and SVG generation; no hand-authored coordinates or secondary JSON graph are required.

## Architecture conventions

- A `flowchart LR` or `flowchart TB` is usually enough. Use subgraphs for meaningful boundaries and labeled edges for interactions.
- Keep IDs stable while changing labels. Label responsibilities by role rather than immediately deciding their deployment technology.
- Include `Existing`, `Proposed` or `Uncertain` in node text. Color alone is insufficient.
- Use `%%` comments for concise source references, evidence limits and omitted flows. Comments remain in the editable source but are not visible in the diagram; important caveats also belong in labels or nearby prose.
- Prefer focused diagrams over compressing a whole system onto one screen. A Mermaid diagram can describe component structure, sequences, state or data relationships; choose the view that answers the current question.
- A conceptual connection does not prove a working integration. A queue or module box does not necessarily imply a separately deployed service.

## Pele-specific behavior

Verified against Pele `1.7.0` and its primary documentation:

- [API](https://pele.run/api): `render()` is synchronous; `mount()` adapts to container width and supplies zoom. `Mounted.update()` reports invalid source through `onError`/`error`, not by throwing. It may retain and dim the last valid diagram.
- [Compatibility](https://pele.run/compatibility): Pele accepts Mermaid syntax but uses its own layout. Subgraphs can keep their own direction even with external connections. It is not pixel-equivalent to Mermaid.js.
- [Theming](https://pele.run/theming): use Pele CSS variables for the surrounding theme. Mermaid `themeVariables` colors do not apply. Semantic class styles and explicit status text are useful for distinguishing proposed work.
- [Security](https://pele.run/security): labels are SVG text, not arbitrary HTML. JavaScript callbacks in `click` statements are ignored. Errors can include diagram source and must be displayed as text.

The bundled page disables all diagram links and images, supplies no custom icon resolver, and does not let source authors choose rendering options. Source is limited to 20,000 characters, SVG output to 1,000,000 characters, and flowchart/agentflow edges to 200. Larger diagrams should usually be split into views. Browser rendering is not isolated in a terminable worker; do not present the page as a general hostile-input sandbox.

The old custom JSON coordinate format and click-to-inspect side panel are intentionally not used. Put detail into focused Mermaid views or accompanying documentation rather than rebuilding a second diagram language inside Mermaid comments.
