#! /usr/bin/bash
#
#Jakob Potter Copyright (c) 
#Date: 12/17/2024
#:color desert

apt -y update
apt install -y nginx
service nginx start

sed -i 's/Welcome to nginx/ Welcome to Jakob'\''s page/g' /var/www/html/*.html

service nginx stop
service nginx start
