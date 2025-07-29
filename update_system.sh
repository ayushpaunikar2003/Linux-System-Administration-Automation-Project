#!/bin/bash
# This script updates all installed packages

echo "Updating system packages..."

# Update and upgrade packages
sudo apt update -y
sudo apt upgrade -y

echo "System update complete!"
