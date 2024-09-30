# Gracefully reload the app using PM2 for zero downtime
pm2 reload landing-page --update-env

# Save the PM2 process list to ensure it restarts on reboot
pm2 save
