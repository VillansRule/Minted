#!/bin/bash
# password_aging.sh

# Set password aging for all users (change [username] as needed)
echo "Configuring password aging for all users:"
for user in $(cut -f1 -d: /etc/passwd); do
    sudo chage -M 90 -m 10 -W 7 $user
done

# Configure login.defs for global password policies
sudo sed -i 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/' /etc/login.defs
sudo sed -i 's/^PASS_MIN_DAYS.*/PASS_MIN_DAYS   10/' /etc/login.defs
sudo sed -i 's/^PASS_WARN_AGE.*/PASS_WARN_AGE   7/' /etc/login.defs

echo "Password aging and policies configured."
