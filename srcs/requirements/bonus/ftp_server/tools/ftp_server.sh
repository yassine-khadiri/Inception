#!/bin/sh

service vsftpd start

sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf


