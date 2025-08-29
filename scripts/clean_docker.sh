#!/bin/bash
set -e

echo "Stopping old container if exists..."
docker rm -f my-nginx || true

echo "Cleaning old unused images..."
docker system prune -af || true
