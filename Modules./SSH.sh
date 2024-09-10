#!/bin/bash
# secure_ssh.sh

# Edit SSH configuration for security
echo "Securing SSH configuration..."
sudo sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/^PermitEmptyPasswords.*/PermitEmptyPasswords no/' /etc/ssh/sshd_config

# Restart SSH service
sudo systemctl restart ssh

echo "SSH has been secured."
