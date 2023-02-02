#!/bin/sh

adduser --gecos "" $FTP_USER
echo "$FTP_USER:$FTP_USER_PW" | chpasswd

mkdir -p /var/run/vsftpd/empty

vsftpd /etc/vsftpd.conf
