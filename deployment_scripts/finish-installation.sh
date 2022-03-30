#!/bin/bash

# Load environment variables
source /etc/profile

# Print deployment info
DEPLOYMENT_TIME=$( date -u "+%Y/%m/%d %H:%M:%S" )
echo "Deployment finished at: "$DEPLOYMENT_TIME" UTC" > /var/www/rezume/deployment/public/deployment_time.txt

# Arrange folder permissions
chown -R root:root /var/www/rezume/deployment
chmod -R 775 /var/www/rezume/deployment

systemctl restart nginx