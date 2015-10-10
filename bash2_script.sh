#!/bin/bash
#
yum list | grep mariadb
if [ $? == 1 ] 
  then 
    touch <<EOT >> /etc/yum.repos.d/MariaDB.repo
    # MariaDB 10.0 CentOS repository list - created 2015-10-10 12:12 UTC
    # http://mariadb.org/mariadb/repositories/
    [mariadb]
    name = MariaDB
    baseurl = http://yum.mariadb.org/10.0/centos7-amd64
    gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
    gpgcheck=1
EOT
else
    sleep 5
    yum -y install mariadb-server mariadb 
    systemctl start mariadb
    systemctl enable mariadb
    mysql -u root
    
fi
