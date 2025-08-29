#!/bin/bash
set -e

echo "Validating service..."

sleep 5  # wait for nginx to start

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" http://localhost)

if [ "$STATUS_CODE" -eq 200 ]; then
  echo "Validation passed! App is running."
  exit 0
else
  echo "Validation failed! HTTP status: $STATUS_CODE"
  exit 1
fi
