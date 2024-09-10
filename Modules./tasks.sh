#!/bin/bash
# review_scheduled_tasks.sh

# List system-wide cron jobs
echo "Listing system-wide cron jobs:"
sudo ls -la /etc/cron.*

# List user-specific cron jobs
echo "Listing user-specific cron jobs:"
for user in $(cut -d: -f1 /etc/passwd); do
    echo "Cron jobs for $user:"
    sudo crontab -u $user -l
done
