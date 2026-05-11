# Configuración de GitHub

## Crear repositorio
```bash
gh auth login
gh repo create AI-MASTERY-COURSE --public --source=. --remote=origin --push
```

## Si gh no está disponible
1. Crear repo en github.com
2. `git remote add origin https://github.com/USER/REPO.git`
3. `git push -u origin main`

## GitHub Pages
1. Settings → Pages → Source: GitHub Actions
2. El workflow website-build.yml se encarga

## Pull Requests automáticos
Los workflows crean PRs en ramas `auto/*`
Revisa y mergea en main.
