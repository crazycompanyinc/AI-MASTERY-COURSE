# GitHub Actions

## Workflows

| Workflow | Schedule | Descripción |
|----------|----------|-------------|
| daily-knowledge-expansion | 6:00 AM UTC | Expande conocimiento |
| daily-news-update | 7:00 AM UTC | Actualiza noticias |
| content-quality | push/PR | Valida calidad |
| link-check | Lunes 10:00 AM | Verifica enlaces |
| website-build | push main | Construye website |

## Ejecución manual
En GitHub → Actions → Seleccionar workflow → Run workflow

## Secrets opcionales
- HF_TOKEN
- OPENAI_API_KEY
- GITHUB_TOKEN (automático)
