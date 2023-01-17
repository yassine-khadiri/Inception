#!/bin/sh

wget https://wordpress.org/latest.tar.gz

tar -xvzf latest.tar.gz

mv wordpress /var/www/html/

rm -f latest.tar.gz