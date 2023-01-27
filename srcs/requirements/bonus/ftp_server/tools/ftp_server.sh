#!/bin/sh

service vsftpd start

sed -i 's/#ftpd_banner=Welcome to blah FTP service./ftpd_banner=Marhba Bik hh.../g' /etc/vsftpd.conf

sed -i 's/#data_connection_timeout=120/data_connection_timeout=30/g' /etc/vsftpd.conf

sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf

sed -i 's/#chroot_local_user=YES/chroot_local_user=YES/g' /etc/vsftpd.conf

sed -i 's/#local_umask=022/local_umask=007/g' /etc/vsftpd.conf

# This Option Is Not A Default Option In The vsftpd Configuration File #
sed -i '$ a\allow_writeable_chroot=YES' /etc/vsftpd.conf

sed -i 's/listen_ipv6=YES/#listen_ipv6=YES/g' /etc/vsftpd.conf

sed -i 's/listen=NO/listen=YES/g' /etc/vsftpd.conf

service vsftpd stop

vsftpd /etc/vsftpd.conf
