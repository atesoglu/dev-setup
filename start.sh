#!/bin/bash

echo "🚀 Starting infrastructure containers..."

docker-compose -f infrastructure/elk/docker-compose.yml -f infrastructure/database/docker-compose.yml -p "dev-resources" up -d

echo "✅ All services are up and running."
