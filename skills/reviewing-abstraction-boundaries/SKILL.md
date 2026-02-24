---
name: reviewing-abstraction-boundaries
description: "Use when reviewing a project's public surface for implementation details that leaked through. Triggers on: leaky abstraction, implementation detail exposed, coupling to dependency, file extension choice, config key naming, API surface review, public interface audit, dependency name in user-facing surface, internal detail leaked, would this break if we swapped libraries"
---

# Reviewing Abstraction Boundaries

## Overview

Identify where internal implementation details have leaked through to the public surface of a project. The goal: your users should never need to know or care which libraries, engines, or data structures you use internally.

**Core principle:** If you can't swap an internal dependency without changing something your users touch, you've found a leaked abstraction.

## When to Use

- Naming a new file format, config key, CLI flag, or API field
- Reviewing a project's public surface before a release
- Choosing conventions that users will build around (template extensions, config schemas, plugin interfaces)
- After adding a new dependency that surfaces in user-facing areas
- When a dependency is deprecated or you're considering alternatives

## The Substitution Test

For each public surface, ask:

> If I replaced [internal dependency] with a different one, would my users need to change anything?

If yes, you've found a leak. The severity depends on how many users are affected and how hard migration would be.

## Where to Look

| Surface | Example leak | What it should be |
|---------|-------------|-------------------|
| **File extensions** | `.tera` (exposes template engine) | `.die` (project's own concept) |
| **Config keys** | `jinja_options` | `template_options` |
| **CLI flags** | `--postgres-host` | `--db-host` |
| **Error messages** | "Tera syntax error on line 5" | "Template syntax error on line 5" |
| **API responses** | `{"orm_id": 42}` | `{"id": 42}` |
| **Directory names** | `migrations/diesel/` | `migrations/` |
| **Environment vars** | `REDIS_URL` (when it's "the cache") | `CACHE_URL` |
| **Documentation** | "Uses Jinja2 syntax" (when engine could change) | "Uses template syntax (powered by Jinja2)" |

Not every mention of a dependency is a leak. `REDIS_URL` is fine if Redis is a deliberate, user-chosen infrastructure component. It's a leak when Redis is an implementation detail of your caching layer that users shouldn't need to know about.

## Severity Triage

**Fix now** (high blast radius, grows over time):
- File extensions and formats users create many of
- Config keys in files users commit to repos
- Plugin/template interfaces others build against

**Fix soon** (moderate blast radius):
- CLI flags and environment variables
- Error messages users see regularly
- API response field names

**Note for later** (low blast radius):
- Internal directory structure
- Log messages
- Transient error details

The key factor: **how many instances accumulate over time?** A config key is set once. A file extension is used on every template file in every template repo. The file extension is more urgent.

## When You Find a Leak

1. **Assess migration cost now vs. later.** The earlier you fix it, the fewer things break. One template repo with `.tera` files is easy. A thousand is a migration project.
2. **Choose your own name.** Pick something that belongs to *your* project's domain, not to any dependency.
3. **Soft-migrate if users already depend on it.** Auto-detect the old convention, fall back gracefully, emit a deprecation warning with clear migration instructions.
4. **Give an escape hatch.** Let users explicitly opt in to the old behavior so nothing breaks silently.

## Common Mistakes

- **Over-abstracting.** Not every dependency name is a leak. If the user chose the dependency (e.g., picking Postgres as their database), naming it directly is fine. Abstract only what's *your* implementation detail.
- **Abstracting too late.** Once an ecosystem builds around a leaked name, the migration cost may exceed the benefit. Catch leaks before they accumulate.
- **Renaming without migration.** A hard break with no fallback punishes early adopters. Always provide a deprecation path.
