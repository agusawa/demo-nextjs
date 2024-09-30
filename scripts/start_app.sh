#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu

# Backup the current live version by renaming the symlink
if [ -L "app_live" ]; then
  unlink app_live
  mv app_live app_old_$(date +%Y%m%d%H%M%S)
fi

# Create a new symlink for app_live pointing to the new deployment
ln -sfn /home/ubuntu/app_new /home/ubuntu/app_live

cd /home/ubuntu/app_live

# Reload the app using PM2
pm2 start ecosystem.config.js

# Save the PM2 process list to ensure it restarts on reboot
pm2 save
