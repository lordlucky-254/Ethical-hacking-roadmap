# Phase 1 — Linux

> Goal: live in the terminal. Linux is the native language of security work.

## Concepts to learn

- FHS
- permissions (`chmod`, `chown`, SUID/SGID/sticky bit)
- users, groups, sudo, PAM
- processes, signals, services (systemd)
- package mgmt on Debian **and** Arch **and** Fedora
- shell scripting (bash loops, pipes, grep, awk, find, xargs)
- logs (journalctl, /var/log, log rotation)
- in-Linux networking (`ip`, `ss`, `ping`, `traceroute`, /etc/hosts, firewalld/nftables)
- DAC vs MAC (SELinux, AppArmor)

## Curated repos

| Repo | What it gives you |
|---|---|
| [trimstray/the-book-of-secret-knowledge](https://github.com/trimstray/the-book-of-secret-knowledge) | Linux/UNIX sysadmin + networking cheatsheets |
| [See all →](06-roadmap-links.md) | — |
| [See all →](06-roadmap-links.md) | Full list in [06-roadmap-links.md](06-roadmap-links.md) |
| [awesome-selfhosted/awesome-selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted) | Run your own services; great for Linux practice |

## Tooling (installed by scripts/setup.sh)

- `nmap`
- `tcpdump`
- `wireshark` (CLI tshark)
- `netcat`
- `jq`
- `git`
- `vim`
- `python3`
- `ripgrep`

## Practice

- [ ] OverTheWire Bandit (finish all levels)
- [ ] Write a bash system-audit script (weak permissions, stale users, open ports)
- [ ] Linux Journey ([linuxjourney.com](https://linuxjourney.com)) all chapters
- [ ] RHCSA-style labs (even if you don't certify)

## Done when

- [ ] You can read and write a 50-line bash script without looking things up
- [ ] You can identify a failed service via journalctl
- [ ] You can set up a firewall rule with nftables/firewalld from memory