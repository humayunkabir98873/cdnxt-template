#!/bin/bash
set -e

echo "=== Pulling latest changes from GitHub ==="
git pull origin main

echo "=== Building and starting containers ==="
docker-compose build
docker-compose up -d

echo "=== Deployment complete! Containers are running ==="
