#!/bin/bash
#
yum list | grep mariadb
sleep 2
yum -y install mariadb-server mariadb 
systemctl start mariadb
systemctl enable mariadb
mysql -u root
# :DD
