#!/bin/bash
# secure_permissions.sh

# Find and list world-writable files
echo "Finding world-writable files:"
sudo find / -type f -perm -o+w -exec ls -l {} \;

# Find SUID/SGID files
echo "Finding SUID/SGID files:"
sudo find / -perm /6000 -type f -exec ls -l {} \;

echo "File permission audit complete."
