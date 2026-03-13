#!/bin/bash
sudo dnf update -y
sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# Disable firewall
sudo systemctl stop firewalld
sudo systemctl disable firewalld

echo "<h1>Terraform Hello World</h1>" | sudo tee /usr/share/nginx/html/index.html