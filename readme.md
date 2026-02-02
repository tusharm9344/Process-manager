This project is a simple Bash-based Process Manager that shows the top CPU-consuming processes,
 lets you search for a process by name,
 and optionally kill a process using its PID, while always saving results to the same report.log file.
 The script is written in strict mode (set -Eeuo pipefail),
 so small mistakes can stop execution; this is intentional to catch real errors early. The log file path is anchored to the script’s own directory using SCRIPT_DIR,
 so logs do not change location when the script is run from different folders. When modifying the script,
 always remember that sort -nrk must include a column number (CPU = 3, memory = 4)
, variables must be referenced with $, and output redirection (>> report.log)
 must be attached directly to the command, not after || true. Use ||
 true only where failures are expected (like grep with no matches or sort | head pipelines),
 and never to hide important errors such as failed kill commands.
