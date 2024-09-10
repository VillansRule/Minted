#!/bin/bash
# configure_apparmor.sh

# Ensure AppArmor is active and enforce profiles
sudo systemctl start apparmor
sudo systemctl enable apparmor
sudo aa-enforce /etc/apparmor.d/*

echo "AppArmor has been configured and profiles enforced."
