#!/usr/bin/env bash
set -euo pipefail

python3 - <<'EOF'
import glob, os, re, sys

def secs(t):
    parts = [int(p) for p in t.split(":")]
    total = 0
    for p in parts:
        total = total * 60 + p
    return total

errors = 0
checked = 0
print("=== Validating timestamped citations ===")
print("")
for bib_path in sorted(glob.glob("skills/*/references/bibliography.md")):
    skill_dir = os.path.dirname(os.path.dirname(bib_path))
    bib = open(bib_path).read()
    bib_ids = {}
    for key, rest in re.findall(r"^\*\*\[([a-z0-9/-]+)\]\*\*(.*)$", bib, re.M):
        m = re.search(r"watch\?v=([\w-]+)", rest)
        bib_ids[key] = m.group(1) if m else None
    if not bib_ids:
        continue
    cited = set()
    for path in sorted(glob.glob(f"{skill_dir}/*.md")):
        if path.endswith("SKILL.md"):
            continue
        text = open(path).read()
        defs = dict(re.findall(r"^\[([a-z0-9/-]+ [\d:]+)\]: (\S+)$", text, re.M))
        body = re.sub(r"^\[[a-z0-9/-]+ [\d:]+\]: \S+$", "", text, flags=re.M)
        uses = set(re.findall(r"\[([a-z0-9/-]+/[a-z0-9-]+ [\d:]+)\](?!\()", body))
        for label in sorted(uses | set(defs)):
            checked += 1
            key, t = label.split(" ")
            cited.add(key)
            problems = []
            if label not in defs:
                problems.append("no link definition")
            if label not in uses:
                problems.append("unused link definition")
            if key not in bib_ids:
                problems.append("key missing from bibliography")
            url = defs.get(label)
            if url:
                m = re.match(r"https://youtu\.be/([\w-]+)\?t=(\d+)$", url)
                if not m:
                    if not re.match(r"https?://\S+$", url):
                        problems.append(f"unexpected URL {url}")
                else:
                    vid, q = m.groups()
                    if key in bib_ids and bib_ids[key] != vid:
                        problems.append("video ID differs from bibliography")
                    if secs(t) != int(q):
                        problems.append(f"t={q} does not match {t}")
            for p in problems:
                print(f"FAIL: {path}: [{label}] {p}")
                errors += 1
    for key in sorted(set(bib_ids) - cited):
        print(f"FAIL: {bib_path}: [{key}] is never cited")
        errors += 1
print("")
print("=== Summary ===")
print(f"{checked} citation(s) checked, {errors} error(s)")
sys.exit(1 if errors else 0)
EOF
