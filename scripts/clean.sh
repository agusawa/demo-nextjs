#!/bin/bash

# Create a new deployment directory
rm -rf /home/ubuntu/app_new
mkdir /home/ubuntu/app_new

# Ensure the new directory is writable
sudo chmod -R 775 /home/ubuntu/app_new
