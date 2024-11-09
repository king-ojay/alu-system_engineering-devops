#!/bin/bash

# Update package index
apt update

# Install Nginx
apt install -y nginx

# Create a simple HTML file
echo "<html>
<head>
    <title>Welcome</title>
</head>
<body>
    Holberton School for the win!
</body>
</html>" > /var/www/html/index.html

# Ensure Nginx is configured to listen on port 80
sed -i 's/listen 80 default_server;/listen 80;/' /etc/nginx/sites-available/default

# Start Nginx without using systemctl
/etc/init.d/nginx start
