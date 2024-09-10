#!/bin/bash
# remove_software.sh

# List installed packages
echo "Listing all installed packages:"
dpkg --list

# Remove a package (change PACKAGE_NAME to actual package name)
# sudo apt-get remove --purge PACKAGE_NAME -y

# Clean up unnecessary packages
sudo apt-get autoremove -y
sudo apt-get autoclean -y

echo "Unnecessary software removed."
