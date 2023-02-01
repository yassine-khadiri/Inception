#!/bin/sh

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

sleep 5

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
                    GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
                    FLUSH PRIVILEGES;"

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"

kill `cat /var/run/mysqld/mysqld.pid`

exec "$@"