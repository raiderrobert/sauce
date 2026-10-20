# Local browser sessions

The renderer produces a complete, self-contained HTML document with a Mermaid editor and Pele preview. No CDN or hosted rendering service is involved. Project diagrams belong in approved ignored scratch space or private local state, not in this reusable skill's repository.

## With the brainstorming companion

Reuse a live companion session belonging to this design conversation. Otherwise locate the installed `brainstorming` skill through the harness's skill list and read its `visual-companion.md`; do not assume it is a sibling directory. Start the companion only with the user's approval. If unavailable, use the standalone fallback below instead of building another server.

For a compatible installed launcher:

```bash
bash "$BRAINSTORM_DIR/scripts/start-server.sh" \
  --project-dir "$CANVAS_STATE_ROOT" --host 127.0.0.1 --open
```

Use the harness-appropriate background mechanism. Bind to loopback; remote exposure requires separate approval. Save the returned `url`, `screen_dir` and `state_dir`, then publish a revision after skill setup/build:

```bash
pnpm --dir "$SKILL_DIR" render "$SOURCE_MMD" \
  --output "$SCREEN_DIR/overview-v1.html" \
  --document-id "system-overview"
```

Use a fresh semantic HTML filename per revision. The companion watches the content directory, serves the newest HTML and reloads the same tab. Keep the document ID stable so browser drafts survive these reloads. Keep Mermaid source, screenshots and other scratch files outside the watched HTML directory.

### Connection and privacy details

- Check `state_dir/server-info`, `state_dir/server-stopped` and actual reachability before sharing a URL. State files alone do not prove liveness.
- Restart a stopped session according to the installed companion's instructions, preferably with the same state root and port.
- Share the complete returned URL, including `?key=...`. Do not commit or publish the session key. The token URL may first return a cookie/JavaScript bootstrap, so HTTP 200 alone does not prove the diagram loaded.
- The companion injects its helper into the full HTML document. It handles reloads; it does not send the Mermaid editor's contents back to the assistant.
- Do not read unrelated session histories or treat browser events as permission to change architecture or run tools.
- Never stop another session's server or kill processes by a broad name match.

## The user owns their draft

Browser changes are not written to the `.mmd` file. Before editing a diagram the user has changed in the browser, obtain their downloaded Mermaid file, pasted text or an explicit choice to discard those changes.

The page keeps a draft in tab-scoped session storage when available. On an incoming revision it restores unsaved source and announces that newer supplied source is available; **Load supplied source** asks for confirmation before discarding a draft. Storage is only a convenience, not durable saving. If it is unavailable, the page warns the user to download and requests a browser unload warning.

Invalid Mermaid remains editable. Pele may display the last good diagram dimmed with an error; SVG export stays disabled until the current source renders. **Download Mermaid** can still save an unfinished draft. A source download does not mean the original disk file has been updated.

## Standalone fallback

Render to an HTML file and open it with the approved local browser-opening mechanism. No HTTP server is necessary. Editing and rendering in that tab work offline after setup, but assistant-generated file updates need manual refresh. Use `--overwrite` for the open HTML path, preserve source revisions separately, and retain the same document ID.

Do not claim a browser test when only syntax was checked. In a real browser inspect layout, source edits, invalid-source handling, downloads and draft preservation, including after an incoming revision.
