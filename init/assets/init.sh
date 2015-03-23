#!bin/bash
rootpassword=Passw0rd

mysql_install_db --user=mysql
mysqld --user=mysql &
sleep 10
mysqladmin -u root password $rootpassword
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'; UPDATE mysql.user SET Grant_priv='Y', Super_priv='Y' WHERE User='root'; FLUSH PRIVILEGES;" -p$rootpassword
killall mysqld
sleep 10
