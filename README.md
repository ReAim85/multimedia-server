# Personal Multi-Media Server (Self-Hosted)
An optimised, private-cloud multimedia server built on Arch Linux to replace paid cloud storage.

## Overview
- **Storage:** 1TB capacity with 8,000+ assets stored.
- **Hardware:** 2016 Celeron Laptop (4GB RAM) optimized with headless Arch Linux and zram.
- **Connectivity:** Secure global access with Tailscale P2P VPN (no open ports).
- **Architecture:** Containerized deployment using Docker and Immich.

## Tech Stack
- **OS:** Arch Linux (No Desktop Environment)
- **Containerization:** Docker, Docker Compose
- **Application:** Immich (Multimedia Management)
- **Networking:** Tailscale, OpenSSH
- **Optimization:** zram (RAM compression), systemd-logind (sleep issue on lid close)
- **Monitoring:** Bash, Cron, ntfy.sh, smartmontools

## Optimization
- **RAM Management:** Used zram with zstd compression to handle memory spikes with 4GB hardware.
- **Workload Tuning:** Disabled Machine Learning containers to maintain a 24/7 uptime on a Celeron processor.
- **Automation:** Custom Bash scripts monitor HDD S.M.A.R.T. health and send error alerts to mobile with webhooks.

## Repository Structure
- `docker-compose.yml`: Optimized container orchestration file.
- `example.env`: environment variable file for docker-compose.yml.
- `scripts/`: System health and automation scripts.
- `docs/`: Technical documentation and setup logs.
