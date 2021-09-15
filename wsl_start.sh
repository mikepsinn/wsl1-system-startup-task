#!/bin/bash
# Modify this script as needed for your services that require auto-start
set -x

sudo service ssh --full-restart

# Jenkins
sudo service jenkins restart || true

# MySQL
sudo service mysql stop
sudo usermod -d /var/lib/mysql/ mysql
sudo service mysql start

# Nginx
sudo service nginx restart
sudo nginx -t 2>/dev/null >/dev/null
if [[ $? == 0 ]]; then
  echo "Valid nginx config"
else
  echo "Invalid nginx config"
  sudo nginx -t
  echo "ERROR: Invalid nginx config"
fi

# PHP
sudo mkdir /run/php || true
sudo service php"${PHP_VERSION}"-fpm restart
sudo php-fpm"${PHP_VERSION}" -t 2>/dev/null >/dev/null
if [[ $? == 0 ]]; then
  echo "Valid php-fpm${PHP_VERSION} config"
else
  echo "ERROR: Invalid php${PHP_VERSION}-fpm below"
  sudo php-fpm"${PHP_VERSION}" -t
  echo "ERROR: Invalid php${PHP_VERSION}-fpm above"
fi

