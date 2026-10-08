# Phase 1 — Linux

> Goal: live in the terminal. Linux is the native language of security work.

## Concepts to learn

- Filesystem hierarchy (FHS), permissions (`chmod`, `chown`, SUID/SGID/sticky bit)
- Users, groups, sudo, PAM
- Processes, signals, services (systemd)
- Package management on Debian **and** Arch **and** Fedora (you'll encounter all)
- Shell scripting: bash loops, pipes, grep, awk, find, xargs
- Logs: journalctl, /var/log, log rotation
- Networking inside Linux: ip, ss, ping, traceroute, /etc/hosts, firewalld/nftables
- Discretionary vs mandatory access control (SELinux, AppArmor)

## Curated repos

| Repo | What it gives you |
|---|---|
| [trimstray/the-book-of-secret-knowledge](https://github.com/trimstray/the-book-of-secret-knowledge) | Linux/UNIX sysadmin + networking cheatsheets |
| [guyandrewet/vim-dad-bod? → suse/… ](https://github.com/) *(see 06 links)* | — |
| [awesome-selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted) | Run your own services; great for Linux practice |
| [haker/… ](#see-links) | Full list in [06-roadmap-links.md](06-roadmap-links.md) |

## Tooling (installed by `scripts/setup.sh`)

`nmap`, `tcpdump`, `wireshark` (CLI tshark), `netcat`, `jq`, `git`, `vim`, `python3`, `ripgrep`

## Practice

- [ ] OverTheWire: Bandit (finish all levels)
- [ ] Build a bash script that audits a system: weak permissions, stale users, open ports
- [ ] Linux Journey (linuxjourney.com) — all chapters
- [ ] Red Hat: RHCSA-style labs (even if you don't cert)

## Done when

- [ ] You can read and write a 50-line bash script without looking things up
- [ ] You can identify why a service failed to start using journalctl
- [ ] You can set up a firewall rule with nftables/firewalld from memory
