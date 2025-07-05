#!/bin/bash

echo "🧹 Stopping containers and removing volumes..."

docker-compose -f infrastructure/elk/docker-compose.yml -f infrastructure/database/docker-compose.yml down -v --remove-orphans

echo "✅ Teardown complete."
