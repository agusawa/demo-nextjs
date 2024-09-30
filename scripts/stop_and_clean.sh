#!/bin/bash

# Navigate to the app directory
cd /home/ubuntu/app

# Remove everything except .next and node_modules
sudo find . -mindepth 1 -maxdepth 1 ! -name '.next' ! -name 'node_modules' -exec rm -rf {} \;
