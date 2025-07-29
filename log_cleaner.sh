#!/bin/bash
# This script deletes .log files older than 7 days from /var/log

echo "Cleaning up old log files..."

# Find and delete logs older than 7 days
find /var/log -name "*.log" -type f -mtime +7 -exec rm -f {} \;

echo "Old log files deleted!"
