#!/bin/sh

adduser --gecos "" $FTP_USER
echo "$FTP_USER:$FTP_USER_PW" | chpasswd

mkdir -p /var/run/vsftpd/empty

mkdir -p /home/$FTP_USER/ftp

chown -R $FTP_USER:$FTP_USER /home/$FTP_USER/ftp

chmod a-w /home/$FTP_USER/ftp

vsftpd /etc/vsftpd.conf
