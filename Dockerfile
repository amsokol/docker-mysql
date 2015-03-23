FROM amsokol/oraclelinux-mysql-init:7.1-5.6.23
MAINTAINER Alexander Sokolovsky <amsokol@gmail.com>

VOLUME /var/lib/mysql

EXPOSE 3306

CMD ["mysqld", "--user=mysql"]
