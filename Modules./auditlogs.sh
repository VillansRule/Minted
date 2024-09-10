#!/bin/bash
# audit_logs.sh

# Review authentication logs
echo "Reviewing authentication logs:"
sudo less /var/log/auth.log

# Review system logs for anomalies
echo "Reviewing system logs:"
sudo less /var/log/syslog

echo "Logs reviewed."
