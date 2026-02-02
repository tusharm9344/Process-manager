 #!/usr/bin/env bash
set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

REPORT_FILE="$SCRIPT_DIR/report.log"

echo "---------------------"  >> "$REPORT_FILE"

echo "Top 5 processes are :" >> 

ps aux | sort -nrk 3 |head -5 || true

echo "Enter process to search ex (Chrome,Whats app, etc.)"

read PROCESS_NAME

ps aux | grep "$PROCESS_NAME" | grep -v grep || true

echo "Want to kill a process? (yes/no)"

read VALUE_

if [ "$VALUE_" = "yes" ]; then 
echo "Enter PID"
read PID 
kill "$PID"
else 
echo "No process killed "
fi
echo "---------------"

echo "process manager finished"

