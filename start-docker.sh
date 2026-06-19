#!/bin/bash

echo "🚀 Checking environment configuration..."
# Safely copy only if the .env file does not exist yet
if [ ! -f .env ]; then
    echo "📋 .env file not found. Creating it from .env-sample..."
    cp .env-sample .env
else
    echo "✅ Active .env file detected. Keeping existing configuration."
fi

echo "🚀 Starting infrastructure containers using Docker..."
docker compose -f elk/docker-compose.yml -f database/docker-compose.yml -p "dev-resources" up -d

echo "⌛ Waiting for Kibana to be ready..."
sleep 15

echo "⚙️ Running Kibana index pattern setup script..."
./elk/kibana-setup.sh

echo "✅ All services are up and running under Docker."