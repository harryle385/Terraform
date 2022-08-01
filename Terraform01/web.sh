#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2
sudo ufw allow -y 'Apache'
sudo systemctl start apache2
sudo systemctl enable apache2
sudo echo Hello world > /var/www/html/index.html