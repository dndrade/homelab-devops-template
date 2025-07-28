<!-- Logo -->
<div align="center">
  <img src="https://raw.githubusercontent.com/dndrade/homelab-docs/main/static/img/logo.svg" width="150" alt="VoidVeil Infra Template">

<!-- Menu -->
&ensp;[<kbd> <br> Overview <br> </kbd>](#overview-)&ensp;
&ensp;[<kbd> <br> Usage <br> </kbd>](#usage-)&ensp;
&ensp;[<kbd> <br> Structure <br> </kbd>](#structure-)&ensp;
<br>
</div>

---

## Overview

**Homelab DevOps Template** is a redacted version of my real infrastructure codebase.  
It reflects real-world automation patterns used in my private homelab setup.

This repo includes:

- 🧱 Terraform for infra provisioning (GCP, Cloudflare)
- ⚙️ Ansible for service deployment
- 🧪 GitHub Actions for CI/CD and config validation
- 🧤 `.env.example` for secret handling

All real services run behind a Tailscale-secured gateway.

## Usage

This repo is not meant to be deployed directly — it's a **reference structure** showing how I manage my real homelab.  
You can adapt it for your own usage.

### Secrets

All secrets and sensitive configs have been redacted.  
Use `.env.example` as a guide.

## Structure

```text
homelab-devops-template/
├── terraform/
│   ├── gcp/           # VM provisioning
│   └── cloudflare/    # DNS & records
├── ansible/
│   ├── playbooks/     # Service setup
│   └── inventory/     # Host targets (redacted)
├── scripts/           # Bootstrap/setup scripts
├── .github/workflows/ # CI config
├── .env.example       # Placeholder secrets
└── README.md
