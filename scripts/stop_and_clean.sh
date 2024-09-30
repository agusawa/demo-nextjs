#!/bin/bash

cd /home/ubuntu

# Stop the PM2 process to free up the directory
pm2 stop 0 || true
pm2 delete 0 || true

sudo chown -R ubuntu:ubuntu ./app_live
rm -rf ./app_live
