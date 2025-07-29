#!/bin/bash
# This script creates a backup of /etc and /home in /backup

echo "Starting backup..."

# Get today's date
DATE=$(date +%F)

# Create backup folder if it doesn't exist
mkdir -p /backup

# Create compressed backups
tar -czf /backup/etc-backup-$DATE.tar.gz /etc
tar -czf /backup/home-backup-$DATE.tar.gz /home

echo "Backup completed and saved in /backup"
