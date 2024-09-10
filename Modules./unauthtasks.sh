#!/bin/bash
# check_unauthorized_tasks.sh

# List user crontabs
echo "Checking for unauthorized scheduled tasks:"
for user in $(cut -f1 -d: /etc/passwd); do
    echo "Cron jobs for $user:"
    sudo crontab -u $user -l
done

echo "Scheduled tasks checked."
