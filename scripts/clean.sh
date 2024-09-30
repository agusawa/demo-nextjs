#!/bin/bash

# Ensure the ubuntu user owns the app_new directory before removing it
sudo chown -R ubuntu:ubuntu /home/ubuntu/app_new

# Remove the app_new directory
rm -rf /home/ubuntu/app_new

# Recreate the app_new directory
mkdir /home/ubuntu/app_new

# Ensure the new directory is writable by the ubuntu user
chmod -R 775 /home/ubuntu/app_new
