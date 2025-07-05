Write-Host "🚀 Starting infrastructure containers (PowerShell)..."

docker-compose -f infrastructure/elk/docker-compose.yml -f infrastructure/database/docker-compose.yml -p "dev-resources" up -d

# Wait a bit before Kibana setup to let Kibana fully start
Start-Sleep -Seconds 15

Write-Host "⚙️ Running Kibana index pattern setup script..."

.\elk\kibana-setup.ps1

Write-Host "✅ All services are up and Kibana is ready."
