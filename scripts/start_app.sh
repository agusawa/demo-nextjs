#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu/app

# Start the app using PM2
pm2 start npm --name "nextjs-app" -- start

# Save the PM2 process list to restart on reboot
pm2 save
