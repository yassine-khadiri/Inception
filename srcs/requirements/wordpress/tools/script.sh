#!/bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html/

wp core download --allow-root

cp wp-config-sample.php wp-config.php

sed -i '36 s/\/run\/php\/php7.3-fpm.sock/9000/' /etc/php/7.3/fpm/pool.d/www.conf

sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config.php

sed -i "s/username_here/$MYSQL_USER/g" wp-config.php

sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config.php

sed -i "s/localhost/$HOST_NAME/g" wp-config.php

exec "$@"
