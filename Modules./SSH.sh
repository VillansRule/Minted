#!/bin/bash

# Ensure that the user has sudo privileges to modify the SSH configuration
if [ "$EUID" -ne 0 ]
  then echo "Please run as root (e.g., sudo ./script.sh)"
  exit
fi

# Modify the SSH configuration
sed -i 's/^LoginGraceTime .*/LoginGraceTime 60/' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin .*/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/^Protocol .*/Protocol 2/' /etc/ssh/sshd_config
sed -i 's/^#PermitEmptyPasswords .*/PermitEmptyPasswords no/' /etc/ssh/sshd_config
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^X11Forwarding .*/X11Forwarding no/' /etc/ssh/sshd_config

# Restart SSH service to apply changes
systemctl restart ssh

# Prompt for user input to continue
read -p "Press [ENTER] key to continue"
