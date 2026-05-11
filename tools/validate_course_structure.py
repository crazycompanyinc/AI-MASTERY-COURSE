#!/usr/bin/env python3
"""Validate the course structure"""
import os
from pathlib import Path

BASE_DIR = Path(__file__).parent.parent
COURSE_DIR = BASE_DIR / "course"

REQUIRED_FILES = [
    "README.md", "lesson.md", "summary.md", "key-concepts.md",
    "examples.md", "exercises.md", "quiz.md", "projects.md",
    "further-reading.md", "references.md", "practical-lab.md"
]

def validate():
    errors = []
    warnings = []
    
    if not COURSE_DIR.exists():
        errors.append("course/ directory not found")
        return errors, warnings
    
    modules = sorted([d for d in COURSE_DIR.iterdir() if d.is_dir() and d.name[0].isdigit()])
    
    if len(modules) == 0:
        errors.append("No modules found in course/")
    
    for module in modules:
        for req_file in REQUIRED_FILES:
            fpath = module / req_file
            if not fpath.exists():
                warnings.append(f"Missing: {module.name}/{req_file}")
            elif fpath.stat().st_size < 50:
                warnings.append(f"Near-empty: {module.name}/{req_file}")
    
    return errors, warnings

if __name__ == "__main__":
    errors, warnings = validate()
    
    if errors:
        print("ERRORS:")
        for e in errors:
            print(f"  ❌ {e}")
    
    if warnings:
        print(f"\nWARNINGS ({len(warnings)}):")
        for w in warnings[:20]:
            print(f"  ⚠️  {w}")
        if len(warnings) > 20:
            print(f"  ... and {len(warnings) - 20} more")
    
    if not errors and not warnings:
        print("✅ All validations passed!")
    elif not errors:
        print(f"\n✅ Structure valid with {len(warnings)} warnings")
    else:
        print(f"\n❌ {len(errors)} errors found")
