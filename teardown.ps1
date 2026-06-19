Write-Host "🧹 Stopping containers and removing volumes (PowerShell)..."

# Fixed paths and updated to the modern 'docker compose' command syntax
docker compose -f elk/docker-compose.yml -f database/docker-compose.yml -p "dev-resources" down -v --remove-orphans

Write-Host "✅ Teardown complete."