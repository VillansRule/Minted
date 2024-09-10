#!/bin/bash
# secure_shared_resources.sh

# Review Samba shares
echo "Reviewing Samba shares:"
sudo cat /etc/samba/smb.conf

# Review NFS exports
echo "Reviewing NFS exports:"
sudo cat /etc/exports

echo "Shared resources have been reviewed."
