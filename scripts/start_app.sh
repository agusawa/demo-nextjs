#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu/app

# Reload the app using PM2 for zero downtime
pm2 reload landing-page

# Save the PM2 process list to ensure it restarts on reboot
pm2 save
