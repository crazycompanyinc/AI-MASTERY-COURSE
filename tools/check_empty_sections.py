#!/usr/bin/env python3
"""Check for empty or near-empty sections"""
from pathlib import Path

BASE_DIR = Path(__file__).parent.parent
COURSE_DIR = BASE_DIR / "course"

def check_empty():
    empty = []
    for md_file in COURSE_DIR.rglob("*.md"):
        content = md_file.read_text().strip()
        lines = [l for l in content.split("\n") if l.strip()]
        if len(lines) < 5:
            empty.append((str(md_file.relative_to(BASE_DIR)), len(lines)))
    
    if empty:
        print(f"Found {len(empty)} near-empty files:")
        for path, lines in empty:
            print(f"  ⚠️  {path} ({lines} non-empty lines)")
    else:
        print("✅ No empty sections found")
    
    return empty

if __name__ == "__main__":
    check_empty()
