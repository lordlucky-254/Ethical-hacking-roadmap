#!/usr/bin/env bash
# Distro-agnostic installer for the cybersecurity roadmap tooling.
# Supports Debian/Kali/Ubuntu (apt), Arch/BlackArch (pacman), Fedora/RHEL (dnf).
set -euo pipefail

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'
info()  { echo -e "${GREEN}[+]${NC} $*"; }
warn()  { echo -e "${YELLOW}[!]${NC} $*"; }
err()   { echo -e "${RED}[-]${NC} $*" >&2; }

if [[ $EUID -eq 0 ]]; then
  SUDO=""
else
  SUDO="sudo"
fi

detect_pm() {
  if command -v apt-get >/dev/null 2>&1; then
    echo "apt"
  elif command -v pacman >/dev/null 2>&1; then
    echo "pacman"
  elif command -v dnf >/dev/null 2>&1; then
    echo "dnf"
  else
    echo "none"
  fi
}

PM=$(detect_pm)
if [[ $PM == "none" ]]; then
  err "No supported package manager found (apt, pacman, dnf)."
  err "Install tools manually: see docs/06-roadmap-links.md"
  exit 1
fi
info "Detected package manager: $PM"

update_index() {
  info "Updating package index..."
  case $PM in
    apt)    $SUDO apt-get update -y ;;
    pacman) $SUDO pacman -Sy --noconfirm ;;
    dnf)    $SUDO dnf check-update -y || true ;;
  esac
}

install_pkg() {
  local pkg="$1"
  case $PM in
    apt)    $SUDO apt-get install -y "$pkg" ;;
    pacman) $SUDO pacman -S --noconfirm --needed "$pkg" ;;
    dnf)    $SUDO dnf install -y "$pkg" ;;
  esac
}

# Packages common across roadmap phases (git, networking, recon, web testing).
# Names are best-effort across distros; failures are reported, not fatal.
PACKAGES=(
  git
  curl
  wget
  nmap
  netcat
  whois
  dnsutils
  nikto
  sqlmap
  hydra
  john
  hashcat
  tcpdump
  net-tools
  python3
  python3-pip
  gobuster
  ffuf
)

main() {
  update_index

  local ok=() failed=()
  for pkg in "${PACKAGES[@]}"; do
    info "Installing $pkg..."
    if install_pkg "$pkg"; then
      ok+=("$pkg")
    else
      warn "Could not install '$pkg' — name may differ on $PM"
      failed+=("$pkg")
    fi
  done

  echo
  info "Installed: ${#ok[@]} packages"
  if (( ${#failed[@]} > 0 )); then
    warn "Failed/skipped: ${failed[*]}"
    warn "Check docs/06-roadmap-links.md for manual install instructions."
  fi

  info "Kali/BlackArch users: many tools come preinstalled — run scripts/check-tools.sh to verify."
  info "Done. Next: run scripts/check-tools.sh"
}

main "$@"
