#!/bin/sh

wget https://wordpress.org/latest.tar.gz

tar -xvzf latest.tar.gz

mv wordpress /var/www/html/

rm -f latest.tar.gz

cp  /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

sed -i 's/database_name_here/$MYSQL_DATABASE/g' /var/www/html/wordpress/wp-config.php

sed -i 's/username_here/$MYSQL_USER/g' /var/www/html/wordpress/wp-config.php

sed -i 's/password_here/$MYSQL_PASSWORD/g' /var/www/html/wordpress/wp-config.php

sed -i 's/localhost/$HOST_NAME/g' /var/www/html/wordpress/wp-config.php
