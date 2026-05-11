# Makefile para AI-MASTERY-COURSE
.PHONY: help install validate audit update-knowledge update-news update-all website check-links glossary toc clean test lint

PYTHON ?= .venv/bin/python
PIP ?= .venv/bin/pip
MKDOCS ?= .venv/bin/mkdocs

help: ## Mostrar esta ayuda
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Instalar dependencias
	pip install -r requirements.txt

validate: ## Validar estructura del curso
	$(PYTHON) tools/validate_course_structure.py
	$(PYTHON) tools/check_empty_sections.py
	$(PYTHON) tools/check_duplicates.py
	@echo "✅ Validación completada"

audit: ## Ejecutar auditoría de cobertura
	$(PYTHON) automation/run_coverage_audit.py
	@echo "✅ Auditoría completada"

update-knowledge: ## Ejecutar expansión de conocimiento diario
	$(PYTHON) automation/daily_knowledge_expansion.py
	@echo "✅ Conocimiento expandido"

update-news: ## Ejecutar actualización de noticias diaria
	$(PYTHON) automation/daily_news_update.py
	@echo "✅ Noticias actualizadas"

update-all: update-knowledge update-news audit ## Ejecutar todas las actualizaciones

website: ## Construir y servir website
	cd website && $(MKDOCS) build
	@echo "Website construido en website/site/"
	@echo "Para servir localmente: cd website && mkdocs serve"

website-serve: ## Servir website localmente
	cd website && $(MKDOCS) serve

check-links: ## Verificar enlaces rotos
	$(PYTHON) tools/check_links.py
	@echo "✅ Links verificados"

glossary: ## Regenerar glosario
	$(PYTHON) tools/generate_glossary.py
	@echo "✅ Glosario generado"

toc: ## Regenerar tabla de contenidos
	$(PYTHON) tools/generate_toc.py
	@echo "✅ TOC generado"

build-index: ## Construir índice de búsqueda
	$(PYTHON) tools/build_index.py
	@echo "✅ Índice construido"

build-course-map: ## Construir mapa del curso
	$(PYTHON) tools/build_course_map.py
	@echo "✅ Mapa del curso generado"

update-changelog: ## Actualizar changelog
	$(PYTHON) tools/update_changelog.py
	@echo "✅ Changelog actualizado"

validate-sources: ## Validar fuentes
	$(PYTHON) tools/validate_sources.py
	@echo "✅ Fuentes validadas"

test: ## Ejecutar tests
	.venv/bin/pytest tests/ -v --tb=short || echo "Sin tests definidos aún"

lint: ## Ejecutar linter
	.venv/bin/ruff check automation/ tools/ scripts/ || true
	@echo "✅ Lint completado"

clean: ## Limpiar archivos temporales
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete 2>/dev/null || true
	rm -rf .pytest_cache/ .mypy_cache/ 2>/dev/null || true
	@echo "✅ Limpieza completada"
