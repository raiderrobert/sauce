#!/usr/bin/env bash
set -euo pipefail

python3 - <<'EOF'
import glob, os, re, sys
from urllib.parse import unquote

KEY = r"[a-z0-9-]+/[a-z0-9-]+"
LOCATOR = r"(?:\d+(?::\d\d)+|¶[a-z0-9-]+)"
LABEL = rf"{KEY} {LOCATOR}"

def secs(t):
    total = 0
    for p in t.split(":"):
        total = total * 60 + int(p)
    return total

def check_video(t, url, bib_url):
    m = re.match(r"https://youtu\.be/([\w-]+)\?t=(\d+)$", url)
    if not m:
        return [f"timestamp citation needs a youtu.be link, got {url}"]
    vid, q = m.groups()
    problems = []
    b = re.search(r"watch\?v=([\w-]+)", bib_url or "")
    if not b or b.group(1) != vid:
        problems.append("video ID differs from bibliography")
    if secs(t) != int(q):
        problems.append(f"t={q} does not match {t}")
    return problems

def slug_words(text):
    words = (re.sub(r"[^a-z0-9]", "", w.lower().replace("\u2019", "").replace("'", "")) for w in text.split())
    return [w for w in words if w]

def check_text(slug, url, bib_url):
    base, _, fragment = url.partition("#")
    problems = []
    if base != bib_url:
        problems.append("link does not match the bibliography URL")
    if bib_url.endswith(".pdf"):
        m = re.fullmatch(r"page=(\d+)", fragment)
        if not m:
            problems.append("PDF citation needs a #page=N fragment")
        elif slug != f"p{m.group(1)}":
            problems.append(f"slug {slug} does not match page {m.group(1)}")
        return problems
    if not fragment.startswith(":~:text="):
        problems.append("text citation needs a #:~:text= fragment")
        return problems
    quoted = unquote(fragment[len(":~:text="):])
    if slug.split("-") != slug_words(quoted)[:len(slug.split("-"))]:
        problems.append(f"slug {slug} does not match the fragment text")
    return problems

errors = 0
checked = 0
print("=== Validating citations ===")
print("")
for bib_path in sorted(glob.glob("skills/*/references/bibliography.md")):
    skill_dir = os.path.dirname(os.path.dirname(bib_path))
    bib = open(bib_path).read()
    bib_urls = {}
    for key, rest in re.findall(rf"^\*\*\[({KEY})\]\*\*(.*)$", bib, re.M):
        urls = re.findall(r"https?://\S+", rest)
        bib_urls[key] = urls[-1].rstrip(".") if urls else None
    if not bib_urls:
        continue
    cited = set()
    for path in sorted(glob.glob(f"{skill_dir}/*.md")):
        if path.endswith("SKILL.md"):
            continue
        text = open(path).read()
        defs = dict(re.findall(rf"^\[({LABEL})\]: (\S+)$", text, re.M))
        body = re.sub(rf"^\[{LABEL}\]: \S+$", "", text, flags=re.M)
        uses = set(re.findall(rf"\[({LABEL})\](?!\()", body))
        for label in sorted(uses | set(defs)):
            checked += 1
            key, locator = label.split(" ")
            cited.add(key)
            problems = []
            if label not in defs:
                problems.append("no link definition")
            if label not in uses:
                problems.append("unused link definition")
            if key not in bib_urls:
                problems.append("key missing from bibliography")
            url = defs.get(label)
            if url and key in bib_urls:
                if locator.startswith("¶"):
                    problems += check_text(locator[1:], url, bib_urls[key])
                else:
                    problems += check_video(locator, url, bib_urls[key])
            for p in problems:
                print(f"FAIL: {path}: [{label}] {p}")
                errors += 1
    for key in sorted(set(bib_urls) - cited):
        print(f"FAIL: {bib_path}: [{key}] is never cited")
        errors += 1
print("")
print("=== Summary ===")
print(f"{checked} citation(s) checked, {errors} error(s)")
sys.exit(1 if errors else 0)
EOF
