#!/bin/bash
# This script checks if disk usage is more than 80%

echo "Checking disk usage..."

# Get the percentage used on root /
USAGE=$(df / | grep / | awk '{print $5}' | tr -d '%')

# Check if usage is 80% or more
if [ "$USAGE" -ge 80 ]; then
  echo "Warning: Disk usage is $USAGE% on /"
else
  echo "Disk usage is fine: $USAGE%"
fi
