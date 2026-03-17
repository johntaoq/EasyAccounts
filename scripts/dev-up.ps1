Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Write-Host "Starting EasyAccounts local dev stack on port 11669..."
docker compose -p easyaccounts-local -f docker-compose.yml -f docker-compose.local.yml up -d db server ai nginx
docker compose -p easyaccounts-local ps

Write-Host ""
Write-Host "Dev URL: http://localhost:11669"
