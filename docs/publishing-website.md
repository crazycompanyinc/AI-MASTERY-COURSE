# Publicar Website

## GitHub Pages
1. Settings → Pages → Source: GitHub Actions
2. El workflow website-build.yml construye y despliega
3. URL: https://USER.github.io/AI-MASTERY-COURSE

## Local
```bash
cd website
mkdocs serve
# http://localhost:8000
```

## Build manual
```bash
cd website
mkdocs build
# Output en website/site/
```
