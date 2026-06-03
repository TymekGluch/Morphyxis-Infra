# Morphyxis-infra

Infra repository for Morphyxis apps

This repo contains:

- nginx config for server with Mailbox and applications for it

This repo will be contains:

- nginx configs,
- terraform configs for infrastructure,
- ansible playbooks for provisioning and deployment,

## Assumptions

- Linux-based VPS environments
- Docker-based service deployment
- Public internet exposure only through Nginx
- Internal service-to-service communication secured via mTLS
- Trusted internal network between services
- One service per VPS (recommended but not required)
- Infrastructure managed through Terraform and Ansible

## How to use

1. Clone the repository
2. To initialize the project, execute command

- to copy scripts to git hooks (pre-push, pre-commit etc.)

```bash
 make init
```

## Project Structure

- `nginx` - contains nginx configuration files for morphyxis apps
- `terraform` - contains terraform configuration files for infrastructure
- `ansible` - contains ansible playbooks for provisioning and deployment
- `scripts` - contains scripts for build, init and pre-push hook
  - `init.sh` - script to initialize the project (copy pre-push hook)
  - `prePush.sh` - script to run before pushing code to remote
  - `bumpVersion.sh` - script to bump version in go.mod file
- `Makefile` - makefile to run common commands like build, clean, etc.
  - `make init` - to initialize the project (copy pre-push hook)
  - `make bump-version` - to bump version based on git tag
