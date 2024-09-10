#!/bin/bash
# verify_network.sh

# Check open ports
echo "Checking open ports:"
sudo netstat -tulpn

# Disable unused network interfaces (replace INTERFACE with actual interface name)
# sudo ifconfig INTERFACE down

echo "Network settings have been verified."
