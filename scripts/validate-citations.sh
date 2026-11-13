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
    all_defs = {}
    for path in sorted(glob.glob(f"{skill_dir}/*.md")):
        if path.endswith("SKILL.md"):
            continue
        text = open(path).read()
        links_path = os.path.join(skill_dir, "references", "links", os.path.basename(path))
        links = open(links_path).read() if os.path.exists(links_path) else ""
        pairs = re.findall(rf"^\[({LABEL})\]: (\S+)$", text + "\n" + links, re.M)
        defs = dict(pairs)
        for label in sorted({l for l, _ in pairs if [x for x, _ in pairs].count(l) > 1}):
            print(f"FAIL: {links_path}: [{label}] defined more than once")
            errors += 1
        body = re.sub(rf"^\[{LABEL}\]: \S+$", "", text, flags=re.M)
        uses = set(re.findall(rf"\[({LABEL})\](?!\()", body))
        for loose in sorted(set(re.findall(r"\[([A-Za-z0-9-]+/[A-Za-z0-9-]+ [^\]]+)\](?!\()", body)) - uses):
            print(f"FAIL: {path}: [{loose}] citation label does not parse")
            errors += 1
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
        principles = set(re.findall(rf"^- \[({LABEL})\]: \S", links, re.M))
        for line in text.splitlines():
            if line.startswith("- **From games:**"):
                first = re.search(rf"\(\[({LABEL})\]", line)
                if not first or first.group(1) not in principles:
                    print(f"FAIL: {path}: From games rule has no source principle in {links_path}: {line[:70]}")
                    errors += 1
        for ref in re.findall(r"see also[^.;)]*?\b([a-z-]+\.md)", text):
            if not os.path.exists(os.path.join(skill_dir, ref)):
                print(f"FAIL: {path}: see-also names a missing file {ref}")
                errors += 1
        all_defs.update(defs)
    skill_md = os.path.join(skill_dir, "SKILL.md")
    if os.path.exists(skill_md):
        for label, url in re.findall(rf"\[({LABEL})\]\((\S+?)\)", open(skill_md).read()):
            checked += 1
            if all_defs.get(label) != url:
                print(f"FAIL: {skill_md}: [{label}] inline link does not match its definition")
                errors += 1
    for key in sorted(set(bib_urls) - cited):
        print(f"FAIL: {bib_path}: [{key}] is never cited")
        errors += 1
print("")
print("=== Summary ===")
print(f"{checked} citation(s) checked, {errors} error(s)")
sys.exit(1 if errors else 0)
EOF
