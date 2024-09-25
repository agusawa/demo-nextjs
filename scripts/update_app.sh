#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu/app

# Ensure correct permissions for the app directory and subdirectories
sudo chown -R ubuntu:ubuntu /home/ubuntu/app

# Make sure node_modules and .next directories are writable
sudo chmod -R 775 /home/ubuntu/app/node_modules || true
sudo chmod -R 775 /home/ubuntu/app/.next || true

# Install new dependencies if package.json is updated
npm install

# Build the Next.js app
npm run build
