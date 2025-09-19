#!/bin/bash

# Install Nginx
# Version 1.0
# Author: Jayesh Mhatre

# Update package lists and install Nginx
apt-get update -y
apt-get install -y nginx

# Enable and start Nginx
systemctl enable nginx
systemctl start nginx

# Create a custom index.html file
echo "<h1>Welcome to my Production  server! Created by using Terraform </h1>" > /var/www/html/index.html

