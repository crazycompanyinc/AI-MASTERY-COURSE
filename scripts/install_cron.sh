#!/bin/bash
# Install cron jobs for AI-MASTERY-COURSE
# Usage: bash scripts/install_cron.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
PROJECT_DIR="$(cd "$PROJECT_DIR" && pwd)"

echo "AI-MASTERY-COURSE Cron Installer"
echo "================================="
echo ""
echo "Project directory: $PROJECT_DIR"
echo ""

# Check if venv exists
if [ ! -f "$PROJECT_DIR/.venv/bin/python" ]; then
    echo "⚠️  Virtual environment not found at $PROJECT_DIR/.venv"
    echo "Create it first:"
    echo "  cd $PROJECT_DIR"
    echo "  python -m venv .venv"
    echo "  source .venv/bin/activate"
    echo "  pip install -r requirements.txt"
    exit 1
fi

# Generate cron entries
CRON_ENTRIES="# AI-MASTERY-COURSE Cron Jobs
0 6 * * * cd $PROJECT_DIR && .venv/bin/python automation/daily_knowledge_expansion.py >> logs/knowledge_expansion.log 2>&1
0 7 * * * cd $PROJECT_DIR && .venv/bin/python automation/daily_news_update.py >> logs/news_update.log 2>&1
0 8 * * * cd $PROJECT_DIR && .venv/bin/python automation/run_coverage_audit.py >> logs/coverage_audit.log 2>&1"

echo "The following cron jobs will be installed:"
echo ""
echo "$CRON_ENTRIES"
echo ""

read -p "Proceed? (y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Backup current crontab
    crontab -l > /tmp/crontab_backup_$(date +%Y%m%d_%H%M%S) 2>/dev/null || true
    
    # Add new entries
    (crontab -l 2>/dev/null; echo ""; echo "$CRON_ENTRIES") | crontab -
    
    echo "✅ Cron jobs installed!"
    echo ""
    echo "Verify with: crontab -l"
    echo "Logs will be in: $PROJECT_DIR/logs/"
else
    echo "Cancelled."
fi
