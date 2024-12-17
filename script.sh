#!/bin/bash
#
apt -y update
apt install -y nginx
service nginx start

sed -i 's/Welcome to nginx/ Welcome to Jakob'\''s page/g' var/www/html/*.html

sed -i 's/nginx/nginx (pronounced as EngineX)/g' /var/www/html/*.html

service nginx stop
service nginx start

