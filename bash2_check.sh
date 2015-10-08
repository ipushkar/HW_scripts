#!/bin/bash
#
echo "***************************"
mysql --version
echo "***************************"
sleep 6

mysql -u root -e "show databases;"
mysql -u root <<EOT
Create user 'test1212'@'localhost' identified by 'pass';
Grant all privileges on *.* to test1212@localhost identified by 'pass' with grant option;
Grant all privileges on *.* to test1212@'%' identified by 'pass' with grant option;
Flush PRIVILEGES;
EOT
mysql -u test1212 -ppass -e "show databases;"
