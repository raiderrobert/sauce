# Visualizing architecture

A self-contained TypeScript skill package: Mermaid source → Pele → a private, editable browser preview. No custom diagram schema, Python runtime, CDN or rendering service.

## Setup

Requires Node 22+ and pnpm. From this directory:

```bash
pnpm install --frozen-lockfile --ignore-scripts
pnpm typecheck
pnpm build
```

Pele is pinned to `1.7.0`. Install/build only this skill; do not add its dependencies to the application being diagrammed.

## Render

```bash
pnpm render /absolute/path/architecture.mmd \
  --output /absolute/path/architecture.html \
  --title "System architecture" \
  --document-id "system-architecture"
```

- `--output` is required. Existing outputs need `--overwrite`; input cannot be replaced.
- `--document-id` identifies browser drafts across revisions. Default: input filename without `.mmd`. Keep it stable when the HTML revision filename changes.
- Output HTML includes the browser bundle and source. It works as a local file or through the brainstorming companion.
- Browser edits stay in the tab/session; **Download Mermaid** saves the text. They do not modify the original file. **Download SVG** is disabled while the source is invalid or differs from the rendered preview.
- CLI failures are bounded JSON messages, not dumps of private diagram source. Browser errors display details locally as text.
- Files are atomically published with owner-only permissions on POSIX systems. Links/images are disabled, and size/edge limits remain under application control. These limits are not a hard CPU-time sandbox for hostile diagrams.

### Why not `pnpm dlx pele`?

Pele is a library and has no executable. This package provides the `visualize-architecture` CLI. After setup/build, it can also run from the local package through pnpm's temporary environment:

```bash
pnpm --package="file:$SKILL_DIR" dlx visualize-architecture \
  "$SOURCE_MMD" --output "$SCREEN_HTML" --document-id "system-architecture"
```

This local-file invocation is tested; it adds no dependencies to the diagrammed project. `dlx` caches packages, so use `pnpm render` while developing the renderer itself to ensure rebuilt code runs. This package is not published to a registry; do not invent a registry command or publish it without approval.

## Checks

All test code lives in this skill:

```bash
pnpm typecheck
pnpm build
pnpm test
pnpm exec playwright install chromium
pnpm test:browser
```

To use an existing Chrome instead of downloading a browser, set `ARCHITECTURE_TEST_BROWSER` to its executable path before running `pnpm test:browser`. CI can use `pnpm exec playwright install --with-deps chromium`.

Vitest tests the CLI and safe source handling. Playwright tests actual Pele rendering, browser edits/downloads, invalid-source handling, draft recovery, narrow layouts and blocking diagram-requested navigation/images. These tests do not establish future agents' compliance with the skill guidance.

## Contents

- `src/`: renderer, CLI, browser editor and shared rendering options—all TypeScript.
- `test/`: Vitest and Playwright tests.
- `assets/canvas.html`: HTML/CSS shell, without project data.
- `examples/`: fictional Mermaid example.
- `reference/`: source conventions and browser-session guidance.
- `dist/`, `node_modules/`, browser reports: generated and ignored.
