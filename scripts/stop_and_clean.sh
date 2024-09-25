#!/bin/bash

# Stop the running Next.js app if it exists
pm2 stop nextjs-app || true
pm2 delete nextjs-app || true

# Navigate to the app directory
cd /home/ubuntu/app

# Remove everything except .next and node_modules
find . -mindepth 1 -maxdepth 1 ! -name '.next' ! -name 'node_modules' -exec rm -rf {} \;
