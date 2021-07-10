#!/bin/bash 

# Remove if previous deployment folder exists
rm -rf /var/www/rezume/prev-deployment

# Backup current deployment 
mv /var/www/rezume/deployment /var/www/rezume/prev-deployment

# Create new deployment folder and make nginx owner
mkdir /var/www/rezume/deployment

chown root:root /var/www/rezume/deployment