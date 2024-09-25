#!/bin/bash

# Stop the running Next.js app if it exists
pm2 stop nextjs-app
pm2 delete nextjs-app
