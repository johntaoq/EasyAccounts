# Windows Dev Setup (EasyAccounts)

This project is set up with:

- `origin`: your fork (`johntaoq/EasyAccounts`)
- `upstream`: official repo (`QingHeYang/EasyAccounts`)
- local dev compose override: `docker-compose.local.yml` (port `11669`)

## 1) One-time install (requires your password/admin interaction)

Run in **Ubuntu (WSL)**:

```bash
sudo apt-get update -y
sudo apt-get install -y docker.io docker-compose-v2
sudo usermod -aG docker $USER
sudo service docker start
```

Then restart WSL once:

```powershell
wsl --shutdown
```

## 2) Open in VS Code

In project root:

```powershell
code .
```

Then `Ctrl+Shift+P` -> `WSL: Reopen Folder in WSL`.

## 3) Local dev commands

In PowerShell (repo root):

```powershell
.\scripts\dev-up.ps1
.\scripts\dev-logs.ps1
.\scripts\dev-down.ps1
```

Local URL: `http://localhost:11669`

## 4) Keep fork in sync

```powershell
git fetch upstream
git checkout main
git rebase upstream/main
git push origin main
```
