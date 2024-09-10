#!/bin/bash
# configure_firewall.sh

# Enable UFW firewall
sudo apt-get install -y ufw
sudo ufw enable

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow ssh

echo "Firewall has been configured."
