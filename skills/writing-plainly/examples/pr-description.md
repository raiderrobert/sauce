# PR description

## After — user's preferred version

```markdown
Adds `visualizing-architecture` as new skill that helps a user visually design or iterate their design via mermaid.

Requires `pnpm`. Uses [Pele](https://pele.run/) as a renderer for mermaid.
```

## Before — counterexample

```markdown
## Summary

Add `visualizing-architecture` as a self-contained TypeScript skill package.

- Standard Mermaid `.mmd` source, rendered and automatically laid out by pinned Pele 1.7.0.
- Local browser editor, preview/zoom, Mermaid and SVG downloads, and draft preservation across incoming revisions.
- Source-grounded architecture guidance that distinguishes existing implementation, proposals and deployment evidence.
- pnpm-only tooling with a lockfile. The local CLI works through `pnpm render` and a tested `pnpm --package="file:$SKILL_DIR" dlx visualize-architecture ...` invocation. Nothing is published to a package registry.
- All source and tests live under the skill directory. No Python harness, custom JSON diagram schema, private project diagrams or session data.
- Scoped CI for typecheck, build, Vitest, real Chromium checks and the packaged dlx entry point.

## Verification

- Existing Sauce metadata/catalog checks passed before the addition; updated checks pass with the new skill.
- `just setup-architecture`, `just check`, `just check-architecture` passed.
- 7 Vitest tests and 2 Playwright browser tests passed locally.
- Browser checks cover editing, downloads, retained drafts, incoming revisions, invalid-source/stale-export behavior, narrow viewports, and disabled external links/images.
- The packaged local CLI ran successfully through pnpm dlx.
- The locally served preview was opened and visually inspected with no page errors.
- Relative documentation links, staged whitespace and project-specific-reference checks passed.

Skill guidance was self-reviewed, not evaluated with a fresh agent. Rendering limits are not claimed to be a hostile-input CPU sandbox.
```

## What changed

The rewrite says what the skill lets someone do, then names its requirement and renderer. It removes the feature inventory and verification report rather than just rephrasing them. Technical names and a useful link remain.

This is an example of choosing what belongs in a PR description, not a rule to omit required test evidence or important limitations elsewhere.
