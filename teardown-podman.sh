#!/bin/bash

echo "🧹 Stopping containers and removing volumes using Podman..."

# Swapped to podman-compose down
podman-compose -f elk/docker-compose.yml -f database/docker-compose.yml -p "dev-resources" down -v

echo "✅ Podman teardown complete."