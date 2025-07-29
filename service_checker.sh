#!/bin/bash
# This script checks if services are running and restarts them if needed

# List of services to check
SERVICES=("nginx" "mysql")

echo "Checking service status..."

for SERVICE in "${SERVICES[@]}"
do
  if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is running"
  else
    echo "$SERVICE is NOT running. Restarting..."
    sudo systemctl restart $SERVICE
    echo "$SERVICE restarted"
  fi
done
