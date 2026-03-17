Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

docker compose -p easyaccounts-local -f docker-compose.yml -f docker-compose.local.yml logs -f --tail=200
