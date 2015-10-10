#!/bin/bash
#
echo "******************************************************"
mysql --version
echo "******************************************************"
sleep 6

# mysql -u root -e "show databases;"
mysql -u root <<EOT
Create user 'test1212'@'localhost' identified by 'pass';
Grant all privileges on *.* to test1212@localhost identified by 'pass' with grant option;
Grant all privileges on *.* to test1212@'%' identified by 'pass' with grant option;
Create user 'test12'@'localhost' identified by 'pass';
Grant Select on *.* to test12@localhost identified by 'pass' with grant option;
Grant Select on *.* to test12@'%' identified by 'pass' with grant option;
Flush PRIVILEGES;
EOT
mysql -u test12 -ppass -e "show databases;"
mysql -u test1212 -ppass -e "show grants for test1212;"
sleep 5
mysql -u test1212 -ppass -e "show grants for test12;"
sleep 3 
mysql -u test12 -ppass -e "use test; create table t1 ( t1 varchar(20), t2 varchar(20) ;"


echo "<< Mariadb is installed, and works. >>"
