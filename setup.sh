#!/usr/bin/env bash
# setup.sh - Install ethical hacking tools on Debian/Ubuntu/Kali (apt),
# Arch/BlackArch/Manjaro (pacman), and Fedora/RHEL/Rocky (dnf).
#
# Usage: bash scripts/setup.sh
#
# Only use these tools on systems you own or are authorized to test.
# See ETHICS.md.
set -uo pipefail

# Package map: generic-name|apt|pacman|dnf
# Use "-" if a package is not available for that package manager.
PACKAGES=(
  "nmap|nmap|nmap|nmap"
  "ncat|netcat-openbsd|openbsd-netcat|nmap-ncat"
  "tcpdump|tcpdump|tcpdump|tcpdump"
  "tshark|tshark|wireshark-cli|wireshark-cli"
  "sqlmap|sqlmap|sqlmap|sqlmap"
  "nikto|nikto|nikto|nikto"
  "gobuster|gobuster|gobuster|gobuster"
  "ffuf|ffuf|ffuf|ffuf"
  "whatweb|whatweb|whatweb|whatweb"
  "hydra|hydra|hydra|hydra"
  "john|john|john|john"
  "hashcat|hashcat|hashcat|hashcat"
  "aircrack-ng|aircrack-ng|aircrack-ng|aircrack-ng"
  "seclists|seclists|seclists|seclists"
  "git|git|git|git"
  "curl|curl|curl|curl"
  "jq|jq|jq|jq"
  "tmux|tmux|tmux|tmux"
)

info()  { printf '\033[1;34m[*]\033[0m %s\n' "$*"; }
ok()    { printf '\033[1;32m[+]\033[0m %s\n' "$*"; }
warn()  { printf '\033[1;33m[!]\033[0m %s\n' "$*"; }
die()   { printf '\033[1;31m[x]\033[0m %s\n' "$*" >&2; exit 1; }

# Use sudo only when not already root
if [[ $EUID -eq 0 ]]; then
  SUDO=""
else
  command -v sudo >/dev/null 2>&1 || die "This script needs root or sudo."
  SUDO="sudo"
fi

# Detect the package manager
if command -v apt-get >/dev/null 2>&1; then
  PM="apt"
elif command -v pacman >/dev/null 2>&1; then
  PM="pacman"
elif command -v dnf >/dev/null 2>&1; then
  PM="dnf"
else
  die "No supported package manager found (apt, pacman, or dnf)."
fi
info "Detected package manager: $PM"

# Refresh package indexes
case "$PM" in
  apt)    $SUDO apt-get update -y || warn "apt-get update reported errors; continuing." ;;
  pacman) $SUDO pacman -Sy --noconfirm || warn "pacman -Sy reported errors; continuing." ;;
  dnf)    : ;;  # dnf refreshes metadata automatically
esac

# Install one package; return non-zero if it fails
install_one() {
  local pkg="$1"
  case "$PM" in
    apt)    $SUDO apt-get install -y "$pkg" ;;
    pacman) $SUDO pacman -S --needed --noconfirm "$pkg" ;;
    dnf)    $SUDO dnf install -y "$pkg" ;;
  esac
}

FAILED=()
for entry in "${PACKAGES[@]}"; do
  IFS='|' read -r name apt_pkg pacman_pkg dnf_pkg <<< "$entry"

  case "$PM" in
    apt)    pkg="$apt_pkg" ;;
    pacman) pkg="$pacman_pkg" ;;
    dnf)    pkg="$dnf_pkg" ;;
  esac

  if [[ "$pkg" == "-" || -z "$pkg" ]]; then
    warn "$name: no package listed for $PM. Install it manually."
    FAILED+=("$name")
    continue
  fi

  info "Installing $name ($pkg)..."
  if install_one "$pkg"; then
    ok "$name installed."
  else
    warn "$name could not be installed via $PM. Install it manually or check the package name."
    FAILED+=("$name")
  fi
done

echo
if [[ ${#FAILED[@]} -eq 0 ]]; then
  ok "All packages installed. Run: bash scripts/check-tools.sh"
else
  warn "Finished with ${#FAILED[@]} package(s) to install manually: ${FAILED[*]}"
  warn "Some tools (e.g., nikto on Arch, or gobuster/ffuf on Fedora) may need AUR or Go installs."
  warn "Run: bash scripts/check-tools.sh to see what is available."
fi
