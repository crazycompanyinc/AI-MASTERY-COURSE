#!/usr/bin/env python3
"""Check for duplicate content across modules"""
from pathlib import Path
import hashlib

BASE_DIR = Path(__file__).parent.parent
COURSE_DIR = BASE_DIR / "course"

def get_file_hash(filepath):
    content = filepath.read_text().strip()
    return hashlib.md5(content.encode()).hexdigest()

def check_duplicates():
    hashes = {}
    duplicates = []
    
    for md_file in COURSE_DIR.rglob("*.md"):
        h = get_file_hash(md_file)
        if h in hashes:
            duplicates.append((str(md_file.relative_to(BASE_DIR)), hashes[h]))
        else:
            hashes[h] = str(md_file.relative_to(BASE_DIR))
    
    if duplicates:
        print(f"Found {len(duplicates)} duplicate files:")
        for dup, orig in duplicates:
            print(f"  ⚠️  {dup} == {orig}")
    else:
        print("✅ No duplicates found")
    
    return duplicates

if __name__ == "__main__":
    check_duplicates()
