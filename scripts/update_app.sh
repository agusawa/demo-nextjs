#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu/app

# Install new dependencies if package.json is updated
npm install

# Build the Next.js app
npm run build
