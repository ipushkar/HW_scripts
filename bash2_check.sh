#!/bin/bash
#
echo "***************************"
mysql --version
echo "***************************"
sleep 6

mysql -u root -e "show databases;"
mysql -u root <<EOT
Create user 'test'@'localhost' identified by 'pass';
Grant all privileges on *.* to test@localhost identified by 'pass' with grant option;
Flush PRIVILEGES;
EOT
mysql -u test -ppass "Show databases;"
