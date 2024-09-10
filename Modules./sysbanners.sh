#!/bin/bash
# secure_banners.sh

# Set Message of the Day (MOTD)
echo "Authorized access only. Violators will be prosecuted." | sudo tee /etc/motd

# Set SSH login banner
echo "Authorized access only. Violators will be prosecuted." | sudo tee /etc/issue.net

# Configure SSH to display banner
sudo sed -i 's|#Banner /etc/issue.net|Banner /etc/issue.net|' /etc/ssh/sshd_config
sudo systemctl restart ssh

echo "System banners have been secured."
