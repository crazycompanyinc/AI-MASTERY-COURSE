# Instalación

## Requisitos
- Python 3.10+
- Git
- 8GB RAM mínimo

## Pasos

```bash
git clone https://github.com/YOUR_USERNAME/AI-MASTERY-COURSE.git
cd AI-MASTERY-COURSE
python -m venv .venv
source .venv/bin/activate  # Linux/Mac
# .venv\Scripts\activate  # Windows
pip install -r requirements.txt
make validate
```

## Verificación
```bash
make audit
make website-serve
```
