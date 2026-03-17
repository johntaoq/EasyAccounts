Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Write-Host "Stopping EasyAccounts local dev stack..."
docker compose -p easyaccounts-local -f docker-compose.yml -f docker-compose.local.yml down
