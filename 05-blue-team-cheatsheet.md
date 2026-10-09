# Phase 5 — Blue Team, SOC & Defense

> Goal: detection, response, and hardening — the other half of the job market.

## Concepts to learn
- SOC — SIEM (ELK/Splunk), alert triage, false positives
- Log sources — syslog, Windows Event Logs, EDR telemetry
- IR lifecycle — PICERL
- Threat hunting with hypotheses
- MITRE ATT&CK — map detections to techniques
- IDS/IPS (Suricata, Snort), Zeek for metadata
- Hardening — CIS benchmarks, least privilege, patch management
- Forensics basics — disk images, memory, timeline analysis, chain of custody
- Malware analysis intro — static (strings, PE headers) vs dynamic (sandbox)

## Curated repos
| Repo | What it gives you |
|---|---|
| `0x4D31/awesome-threat-detection` | Detection engineering resources |
| [See all →](06-roadmap-links.md) | |
| `mitre/cti` | The technique knowledge base as data |
| `TheHive-Project` | Incident response case management |
| `elastic/examples` | Real SIEM detection examples |

## Tooling
`suricata`, `zeek`, `wireshark/tshark`, `volatility`, `yara`, `osquery`, ELK stack (Docker), `linpeas`

## Practice
- Elastic Security / Splunk free training labs
- Detect Phase 4 attacks with your own detection rules
- TryHackMe SOC Level 1
- DFIR ranges (CyberDefenders, LetsDefend, Blue Team Labs Online)
- Mini incident report for a simulated breach

## Done when
- [ ] Write a Suricata/Sigma rule for a technique from ATT&CK
- [ ] Triage a real SIEM alert end-to-end in a lab
- [ ] Walk through a full IR lifecycle on paper