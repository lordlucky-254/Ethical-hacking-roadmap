# Phase 2 — Networking

> Goal: understand traffic so you can read it, break it, and defend it.

## Concepts to learn

- OSI & TCP/IP models — map every layer to a real tool
- IPv4/IPv6 addressing, subnetting (practice until automatic)
- TCP/UDP: handshake, flags, ports, common services
- DNS in depth: record types, zone transfers, cache poisoning basics
- HTTP/HTTPS: methods, status codes, headers, cookies, TLS handshake
- Routing, NAT, VPNs, VLANs, proxy types
- Packet analysis: capture, filter, follow streams
- Network attacks at a high level: MITM, ARP spoofing, DNS spoofing, DHCP attacks

## Curated repos

| Repo | What it gives you |
|---|---|
| [trimstray/the-book-of-secret-knowledge](https://github.com/trimstray/the-book-of-secret-knowledge) | Networking commands & protocol cheatsheets |
| [awesome-pentest](https://github.com/awesome-pentest/awesome-pentest) | Network recon tooling lists |
| [jhfuiure/… *(see links)*](06-roadmap-links.md) | Full curated list |

## Tooling

`nmap`, `tcpdump`, `tshark`, `wireshark`, `netcat`/`socat`, `masscan`, `arp-scan`, `dig`/`nslookup`, `iperf3`

## Practice

- [ ] Subnetting drills: 20 subnets in 60 seconds (subnetting.net style)
- [ ] Capture your own traffic in Wireshark; follow a TCP stream and a TLS handshake
- [ ] Nmap: scan your lab network, explain every flag you used
- [ ] Build a home lab with 3 VMs on a host-only network; document the topology
- [ ] TryHackMe: "Network Fundamentals", "Wireshark 101" paths

## Done when

- [ ] You can subnet without a calculator
- [ ] You can look at a pcap and say what application and what went wrong
- [ ] You can run an nmap scan and interpret every result column
