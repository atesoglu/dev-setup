#!/bin/bash

echo "🧹 Stopping containers and removing volumes..."

# Fixed paths and updated to modern 'docker compose' syntax
docker compose -f elk/docker-compose.yml -f database/database/docker-compose.yml -p "dev-resources" down -v --remove-orphans

echo "✅ Teardown complete."