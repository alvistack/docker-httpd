#!/bin/bash

set -o xtrace

# Ensure required folders exist with correct owner:group
mkdir -p /var/www/html
chmod 0755 /var/www/html
chown -Rf www-data:www-data /var/www/html

# Running Apache in foreground
exec /usr/local/apache2/bin/httpd -DFOREGROUND
