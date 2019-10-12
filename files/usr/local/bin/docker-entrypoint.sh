#!/bin/bash

set -o xtrace

# Prepend executable if command starts with an option
if [ "${1:0:1}" = '-' ]; then
    set -- apachectl "$@"
fi

if [ "$1" = 'apachectl' ]; then
    mkdir -p /var/www/html
    chown -Rf www-data:www-data /var/www/html
    chmod 0755 /var/www/html
fi

exec "$@"
