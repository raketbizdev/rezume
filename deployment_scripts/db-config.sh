#!/bin/bash 

# Go to the deployment directory
cd /var/www/rezume/deployment

# Remove if there is an existing database configuration
rm -f config/database.yml

# Link the database configuration to shared db config file
ln -s /var/www/rezume/shared/config/database.yml config/database.yml