#!/usr/bin/env bash
# check-tools.sh - Report which toolkit commands are installed.
#
# Usage: bash scripts/check-tools.sh
# Exit code: 0 if every tool is found, 1 otherwise.
set -uo pipefail

# Each entry: "Label|cmd1 cmd2 ..."  (any one command counts as installed)
CHECKS=(
  "Nmap|nmap"
  "Netcat|nc ncat"
  "tcpdump|tcpdump"
  "tshark|tshark"
  "sqlmap|sqlmap"
  "nikto|nikto"
  "gobuster|gobuster"
  "ffuf|ffuf"
  "whatweb|whatweb"
  "hydra|hydra"
  "John the Ripper|john"
  "hashcat|hashcat"
  "aircrack-ng|aircrack-ng"
  "git|git"
  "curl|curl"
  "jq|jq"
  "tmux|tmux"
  "Python 3|python3"
)

missing=0
printf '%-18s %s\n' "TOOL" "STATUS"
printf '%-18s %s\n' "----" "------"

for entry in "${CHECKS[@]}"; do
  label="${entry%%|*}"
  cmds="${entry#*|}"
  found=""
  for c in $cmds; do
    if command -v "$c" >/dev/null 2>&1; then
      found="$c"
      break
    fi
  done

  if [[ -n "$found" ]]; then
    printf '%-18s \033[1;32mOK\033[0m (%s)\n' "$label" "$found"
  else
    printf '%-18s \033[1;31mMISSING\033[0m\n' "$label"
    missing=$((missing + 1))
  fi
done

echo
if [[ $missing -eq 0 ]]; then
  echo "All tools found."
else
  echo "$missing tool(s) missing. Run: bash scripts/setup.sh"
fi

[[ $missing -eq 0 ]]
