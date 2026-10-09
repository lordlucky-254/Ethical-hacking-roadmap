# Phase 2 — Networking

> Goal: understand traffic so you can read it, break it, and defend it.

## Concepts to learn

- OSI model & TCP/IP stack — mapped to the tools that work at each layer
- IPv4 / IPv6 & subnetting — VLSM, CIDR, calculating usable hosts
- TCP & UDP — handshake, flags, ports, common services
- DNS in depth — record types, resolution flow, zone transfers, cache poisoning basics
- HTTP/HTTPS — methods, status codes, headers, cookies, TLS handshake
- Routing, NAT, VPNs, VLANs, proxy types
- Packet analysis — capture, filter, follow streams, reconstruct sessions
- Network attacks — MITM, ARP spoofing, DNS spoofing, DHCP attacks

## Curated repos

| Repo | What it gives you |
|---|---|
| [trimstray/the-book-of-secret-knowledge](https://github.com/trimstray/the-book-of-secret-knowledge) | Networking commands & protocol cheatsheets |
| [awesome-pentest/awesome-pentest](https://github.com/awesome-pentest/awesome-pentest) | Network recon tooling lists |
| [See all →](06-roadmap-links.md) | Full curated list |

## Tooling

- `nmap` — discovery & port scanning
- `tcpdump` / `tshark` — command-line packet capture and analysis
- `wireshark` — GUI packet analysis, follow streams
- `netcat` / `socat` — read and write raw TCP/UDP
- `masscan` — very fast port scanning at scale
- `arp-scan` — discover live hosts on your LAN
- `dig` / `nslookup` — DNS querying
- `iperf3` — bandwidth and throughput testing

## Practice

- [ ] Subnet without a calculator: 20 practice subnets in 60 seconds (in the style of subnetting.net)
- [ ] Open a Wireshark capture, follow a TCP stream, and identify the application + flag an anomaly
- [ ] Capture your own TLS handshake and walk through ClientHello → ServerHello → cert chain
- [ ] Attack your own lab: MITM with ARP spoofing, then explain the fix (port security, static ARP)
- [ ] Build a 3-VM host-only lab (Kali, target, victim) and document the full topology
- [ ] Complete TryHackMe "Network Fundamentals" and "Wireshark 101"

## Done when

- [ ] You can subnet any block in your head without a calculator
- [ ] You can read a pcap and tell what application ran and what went wrong
- [ ] You can interpret every column of an `nmap` result and choose the next step