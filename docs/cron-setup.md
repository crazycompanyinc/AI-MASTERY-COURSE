# Configuración de Cron

## Obtener ruta absoluta
```bash
cd /path/to/AI-MASTERY-COURSE && pwd
```

## Editar crontab
```bash
crontab -e
```

## Pegar (con ruta correcta)
```
0 6 * * * cd /ABSOLUTE/PATH/AI-MASTERY-COURSE && .venv/bin/python automation/daily_knowledge_expansion.py >> logs/knowledge_expansion.log 2>&1
0 7 * * * cd /ABSOLUTE/PATH/AI-MASTERY-COURSE && .venv/bin/python automation/daily_news_update.py >> logs/news_update.log 2>&1
0 8 * * * cd /ABSOLUTE/PATH/AI-MASTERY-COURSE && .venv/bin/python automation/run_coverage_audit.py >> logs/coverage_audit.log 2>&1
```

## Verificar
```bash
crontab -l
```

## Desactivar
```bash
crontab -r
```

## Probar manualmente
```bash
.venv/bin/python automation/daily_knowledge_expansion.py
```
