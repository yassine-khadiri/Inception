#!/bin/sh

sed -i '36 s/\/run\/php\/php7.3-fpm.sock/9000/' /etc/php/7.3/fpm/pool.d/www.conf

if [ ! -f /var/www/html/wp-config.php ]; then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

    chmod +x wp-cli.phar

    mv wp-cli.phar /usr/local/bin/wp

    cd /var/www/html/

    wp core download --allow-root

    cp wp-config-sample.php wp-config.php

    wp config set --allow-root DB_NAME $MYSQL_DATABASE
    wp config set --allow-root DB_USER $MYSQL_USER
    wp config set --allow-root DB_PASSWORD $MYSQL_PASSWORD
    wp config set --allow-root DB_HOST $HOST_NAME

    wp core install --allow-root --url=$DOMAIN_NAME --title="cars" --admin_user=$ADMIN_USER --admin_email=$ADMIN_EMAIL --admin_password=$ADMIN_PASSWORD

    wp user create --allow-root $WP_USER $WP_USER_EMAIL --user_pass=$WP_USER_PASSWORD
fi

exec "$@"
