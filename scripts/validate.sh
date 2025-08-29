#!/bin/bash
sleep 5
if docker ps | grep -q my-nginx; then
  echo "Nginx container is running ✅"
  exit 0
else
  echo "Nginx container failed ❌"
  exit 1
fi
