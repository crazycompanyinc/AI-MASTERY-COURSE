# Troubleshooting

## make validate falla
- Verifica que Python 3.10+ está instalado
- Ejecuta `pip install -r requirements.txt`
- Revisa los mensajes de error específicos

## mkdocs serve falla
- `pip install mkdocs mkdocs-material`
- Verifica que website/mkdocs.yml es válido
- Prueba `cd website && mkdocs serve`

## Crons no ejecutan
- Verifica la ruta absoluta en cron.example
- Asegúrate de que .venv existe
- Revisa logs en logs/

## GitHub Actions fallan
- Revisa los logs en GitHub → Actions
- Verifica que los secrets están configurados
- Algunos fallos son por rate limiting de APIs externas
