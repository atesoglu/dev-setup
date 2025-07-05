Write-Host "🧹 Stopping containers and removing volumes (PowerShell)..."

docker-compose -f infrastructure/elk/docker-compose.yml -f infrastructure/database/docker-compose.yml down -v --remove-orphans

Write-Host "✅ Teardown complete."
