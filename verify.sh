#!/bin/sh
# Verifies the HTML parses, internal links resolve, and required credits exist.
set -u
cd "$(dirname "$0")"
fail=0

python3 - <<'EOF' || fail=1
import os, sys
from html.parser import HTMLParser

VOID = {"area","base","br","col","embed","hr","img","input","link","meta","source","track","wbr"}

class Checker(HTMLParser):
    def __init__(self, path):
        super().__init__(convert_charrefs=True)
        self.path, self.stack, self.errors = path, [], []
    def handle_starttag(self, tag, attrs):
        if tag not in VOID:
            self.stack.append(tag)
    def handle_endtag(self, tag):
        if tag in VOID:
            return
        if not self.stack:
            self.errors.append(f"stray </{tag}>")
            return
        if self.stack[-1] == tag:
            self.stack.pop()
        else:
            self.errors.append(f"mismatch: </{tag}> while open stack top is <{self.stack[-1]}>")
            if tag in self.stack:
                while self.stack and self.stack[-1] != tag:
                    self.stack.pop()
                if self.stack:
                    self.stack.pop()

ok = True
for path in ("site/index.html", "site/sheets.html"):
    if not os.path.isfile(path):
        print(f"FAIL missing file: {path}"); ok = False; continue
    c = Checker(path)
    c.feed(open(path, encoding="utf-8").read())
    c.close()
    for t in c.stack:
        c.errors.append(f"unclosed <{t}>")
    if c.errors:
        ok = False
        for e in c.errors:
            print(f"FAIL {path}: {e}")
    else:
        print(f"OK {path}: HTML parses cleanly, all tags balanced")
sys.exit(0 if ok else 1)
EOF

python3 - <<'EOF' || fail=1
import os, re, sys
ok = True
def resolve(base_dir, href):
    if "#" in href:
        href, _frag = href.split("#", 1)
    if not href or href.startswith(("http://", "https://", "mailto:")):
        return True
    return os.path.isfile(os.path.normpath(os.path.join(base_dir, href)))

pairs = [("site/index.html", "site"), ("site/sheets.html", "site")] + [
    (f"docs/{f}", "docs")
    for f in sorted(os.listdir("docs")) if f.endswith(".md")]
RX = re.compile(r'\]\(([^)]+)\)')
for path, base in pairs:
    for link in RX.findall(open(path, encoding="utf-8").read()):
        if not resolve(base, link):
            print(f"FAIL {path}: broken link -> {link}")
            ok = False
if ok:
    n = sum(len(RX.findall(open(p, encoding="utf-8").read())) for p, _ in pairs)
    print(f"OK all internal links resolve ({n} links checked)")
sys.exit(0 if ok else 1)
EOF

# Required credits
grep -q "Copyright (c) 2026 Asdale Dynamics, LLC" LICENSE \
  && echo "OK LICENSE copyright line present" || { echo "FAIL LICENSE copyright line"; fail=1; }
grep -q "Asdale Dynamics, LLC" README.md \
  && echo "OK README credits Asdale Dynamics, LLC" || { echo "FAIL README credit"; fail=1; }

# Site pages open standalone (no build system required): sanity-check sizes
for f in site/index.html site/sheets.html; do
  [ -s "$f" ] && [ "$(wc -c < "$f")" -gt 2000 ] \
    && echo "OK $f is non-trivially sized" || { echo "FAIL $f too small"; fail=1; }
done

if [ "$fail" -eq 0 ]; then
  echo "PASS: everything checks out."
else
  echo "FAIL: one or more checks failed."
fi
exit "$fail"
