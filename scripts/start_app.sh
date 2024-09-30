#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu

# Create a new symlink for app_live pointing to the new deployment
mv ./app_new ./app_live

# Navigate to the app directory
cd ./app_live

# Start the PM2 process
pm2 start ecosystem.config.js

# Save the PM2 process list to ensure it restarts on reboot
pm2 save
