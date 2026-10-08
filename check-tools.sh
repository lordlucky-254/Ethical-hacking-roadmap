#!/usr/bin/env bash
# Verify which roadmap tools are installed. Works on any distro.
set -euo pipefail

GREEN='\033[0;32m'; RED='\033[0;31m'; NC='\033[0m'

# tool:short-description pairs
TOOLS=(
  "git:Version control"
  "curl:HTTP client"
  "wget:File downloader"
  "nmap:Network scanner"
  "whois:Domain lookup"
  "dig:DNS lookup (dnsutils)"
  "netcat:Network utility (netcat/ncat)"
  "python3:Scripting"
  "pip3:Python packages (python3-pip)"
  "tcpdump:Packet capture"
  "nikto:Web server scanner"
  "sqlmap:SQL injection testing"
  "hydra:Online password cracker"
  "john:Password cracker"
  "hashcat:GPU password cracker"
  "gobuster:Directory brute-forcer"
  "ffuf:Fuzzer"
  "gh:GitHub CLI"
  "code:VS Code"
)

installed=0
missing=0
missing_list=()

echo "Checking roadmap tools:"
echo "-----------------------"
for entry in "${TOOLS[@]}"; do
  tool="${entry%%:*}"
  desc="${entry#*:}"
  if command -v "$tool" >/dev/null 2>&1; then
    printf "  ${GREEN}[ok]${NC}   %-12s %s\n" "$tool" "$desc"
    ((installed++))
  else
    printf "  ${RED}[miss]${NC} %-12s %s\n" "$tool" "$desc"
    missing_list+=("$tool")
    ((missing++))
  fi
done

echo "-----------------------"
echo "Installed: $installed / $((installed + missing))"

if (( missing > 0 )); then
  echo "Missing: ${missing_list[*]}"
  echo "Try: bash scripts/setup.sh (installs on apt/pacman/dnf systems)"
  exit 1
fi

echo "All roadmap tools available. Good to go."
