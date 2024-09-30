#!/bin/bash

# Stop the PM2 process to free up the directory
pm2 stop landing-page || true
pm2 delete landing-page || true

# Navigate to the app directory
sudo chown -R ubuntu:ubuntu /home/ubuntu/app_live

# Stop the PM2 process to free up the directory
rm -rf ./app_live
