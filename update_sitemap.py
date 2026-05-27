#!/usr/bin/env python3
import os, re
from datetime import date

PUBLIC_DIR  = "public"
SITEMAP     = "public/sitemap.xml"
BASE_URL    = "https://elgabbas.netlify.app"
TODAY       = date.today().isoformat()

EXCLUDE = {
    "index.html", "404.html", "sitemap.xml"
}
EXCLUDE_PATTERNS = [
    re.compile(r'^google[0-9a-f]+\.html$'),  # Google verification
    re.compile(r'(^|/)index\.html$'),        # section index files
]

def should_exclude(relpath):
    filename = os.path.basename(relpath)
    if filename in EXCLUDE:
        return True
    for pat in EXCLUDE_PATTERNS:
        if pat.search(relpath):
            return True
    return False

# Read sitemap
with open(SITEMAP, "r", encoding="utf-8") as f:
    content = f.read()

existing_locs = set(re.findall(r'<loc>(.*?)</loc>', content))

new_entries = []

for root, dirs, files in os.walk(PUBLIC_DIR):
    # Skip hidden dirs
    dirs[:] = [d for d in dirs if not d.startswith('.')]
    for fname in files:
        if not (fname.lower().endswith('.html') or fname.lower().endswith('.pdf')):
            continue
        abs_path = os.path.join(root, fname)
        relpath  = os.path.relpath(abs_path, PUBLIC_DIR).replace(os.sep, '/')
        if should_exclude(relpath):
            continue
        url = f"{BASE_URL}/{relpath}"
        if url in existing_locs:
            continue
        new_entries.append(url)
        print(f"  Adding: {url}")

if not new_entries:
    print("Sitemap already complete — no new URLs to add.")
else:
    entries_xml = "\n".join(
        f"  <url>\n    <loc>{url}</loc>\n    <lastmod>{TODAY}</lastmod>\n    <changefreq>monthly</changefreq>\n    <priority>0.4</priority>\n  </url>"
        for url in sorted(new_entries)
    )
    content = content.replace("</urlset>", f"{entries_xml}\n</urlset>")
    with open(SITEMAP, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"Done. Added {len(new_entries)} URLs to sitemap.xml.")
