#!/bin/bash
set -e

echo "Starting new nginx container..."

docker run -d \
  --name my-nginx \
  -p 80:80 \
  -v /home/ubuntu/app:/usr/share/nginx/html \
  nginx

echo "Container started successfully!"
