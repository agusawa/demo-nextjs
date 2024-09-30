#!/bin/bash

# Unzip the new deployment package to the new directory
unzip /tmp/app.zip -d /home/ubuntu/app_new

# Ensure correct ownership of the new app directory
sudo chown -R ubuntu:ubuntu /home/ubuntu/app_new
sudo chmod -R 775 /home/ubuntu/app_new
