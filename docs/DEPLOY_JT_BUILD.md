# jt-build Production Deploy (GitHub Actions)

This repository includes a workflow that deploys `main` to the Azure VM `jt-build`.

## 1) GitHub Secrets

In your repo settings, add:

- `JT_BUILD_HOST` -> `172.210.145.163`
- `JT_BUILD_USER` -> `azureuser`
- `JT_BUILD_SSH_KEY` -> content of your private key (`-----BEGIN ...` to `-----END ...`)

## 2) VM prerequisites

The workflow expects Docker + Compose already installed on the VM and deploys to:

`/home/azureuser/services/easyaccounts/prod`

## 3) Triggering deploy

- Auto deploy: push to `main`
- Manual deploy: Actions -> `Deploy to jt-build` -> `Run workflow`

## 4) Runtime URLs

- prod: `http://<jt-build-ip>:10669`

## 5) Rollback

SSH to VM, then:

```bash
cd ~/services/easyaccounts/prod
git log --oneline -n 10
git reset --hard <good_commit>
docker compose up -d
```
