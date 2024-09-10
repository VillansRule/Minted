#!/bin/bash
# group_management.sh

# List all groups
echo "Listing all groups:"
cut -d: -f1 /etc/group

# Show group memberships for all users
echo "Group memberships for users:"
for user in $(cut -d: -f1 /etc/passwd); do
    echo "$user:"
    groups $user
done
