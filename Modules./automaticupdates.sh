#!/bin/bash
# configure_automatic_updates.sh

# Enable unattended upgrades
sudo apt-get install -y unattended-upgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades

echo "Automatic updates configured."
