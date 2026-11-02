# README prose instead of feature bullets

## Preferred — user's rewrite

```markdown
A "package manager" for paths, both files and dirs.

Pin path to the version you need from a remote git repo. Anything from a single Makefile to an entire CI workflow.

Edit freely and upgrade safely. Your local changes are preserved through three-way merge on upgrade.
```

## Before — existing opening

```markdown
A "package manager" for paths, both files and dirs.

- **Pin files, not packages.** Pull a Makefile, a CI workflow, or a linter config from any GitHub repo and lock it to a version.
- **Edit freely, upgrade safely.** Your local changes are preserved through three-way merge on upgrade.
- **No registry, no publishing.** Tag your source repo. Any file in any GitHub repo is a valid dependency.
- **CI-ready.** `graft check` exits non-zero if anything is modified or stale.
```

## What changed

The rewrite keeps the tagline, then describes pinning a path and upgrading without losing local changes. It drops the registry and CI bullets rather than finding a new way to list every feature. Concrete terms such as Makefile and three-way merge remain. This passage uses paragraphs; it does not establish a rule against lists elsewhere.
