Write-Host "🚀 Starting infrastructure containers (PowerShell)..."

# Fixed paths by removing the non-existent 'infrastructure/' wrapper folder
# and updated to the modern 'docker compose' command syntax
docker compose -f elk/docker-compose.yml -f database/docker-compose.yml -p "dev-resources" up -d

# Wait a bit before Kibana setup to let Kibana fully start
Start-Sleep -Seconds 15

Write-Host "⚙️ Running Kibana index pattern setup script..."

# Corrected path to execute the local setup script
.\elk\kibana-setup.ps1

Write-Host "✅ All services are up and Kibana is ready."