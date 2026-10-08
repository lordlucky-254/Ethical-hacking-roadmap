# Phase 5 — Blue Team, SOC & Defense

> Goal: detection, response, and hardening — the other half of the job market.

## Concepts to learn

- Security operations: SIEM (ELK, Splunk), alert triage, false positives
- Log sources: syslog, Windows Event Logs, EDR telemetry
- Incident response lifecycle (PICERL): Preparation → Identification → Containment → Eradication → Recovery → Lessons
- Threat hunting with hypotheses
- MITRE ATT&CK — map detections to techniques
- Network defense: IDS/IPS (Suricata, Snort), Zeek for metadata
- Hardening: CIS benchmarks, least privilege, patch management
- Digital forensics basics: disk images, memory, timeline analysis, chain of custody
- Malware analysis intro: static (strings, PE headers) vs dynamic (sandbox)

## Curated repos

| Repo | What it gives you |
|---|---|
| [0x4D31/awesome-threat-detection](https://github.com/0x4D31/awesome-threat-detection) | Detection engineering resources |
| [awesome-alexo/… → s0md3v/… ](06-roadmap-links.md) | Full list in links doc |
| [MITRE ATT&CK](https://github.com/mitre/cti) | The technique knowledge base as data |
| [TheHive-Project](https://github.com/TheHive-Project) | Incident response case management |
| [Elastic examples](https://github.com/elastic/examples) | Real SIEM detection examples |

## Tooling

`suricata`, `zeek`, `wireshark/tshark`, `volatility`, `yara`, `osquery`, ELK stack (Docker), `linpeas` (for blue team review too)

## Practice

- [ ] Elastic Security / Splunk free training labs
- [ ] Detect the Phase 4 attacks you learned — write your own detection rules
- [ ] TryHackMe SOC Level 1 path
- [ ] DFIR ranges: CyberDefenders, LetsDefend, Blue Team Labs Online
- [ ] Write a mini incident report for a simulated breach

## Done when

- [ ] You can write a Suricata/Sigma rule for a technique from ATT&CK
- [ ] You've triaged a real SIEM alert end-to-end in a lab
- [ ] You can walk through a full IR lifecycle on paper
