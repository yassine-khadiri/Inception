#!/bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html/

wp core download --allow-root

cp  /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

sed -i 's/database_name_here/$MYSQL_DATABASE/g' /var/www/html/wordpress/wp-config.php

sed -i 's/username_here/$MYSQL_USER/g' /var/www/html/wordpress/wp-config.php

sed -i 's/password_here/$MYSQL_PASSWORD/g' /var/www/html/wordpress/wp-config.php

sed -i 's/localhost/$HOST_NAME/g' /var/www/html/wordpress/wp-config.php
