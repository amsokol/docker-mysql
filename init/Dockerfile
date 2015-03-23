FROM oraclelinux:7.1
MAINTAINER Alexander Sokolovsky <amsokol@gmail.com>

# User root user to install software
USER root

RUN yum -y update && yum clean all

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd -r mysql -g 1000 && useradd -u 1000 -r -g mysql mysql

# set Moscow time zone
RUN ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

# install MySQL server
RUN yum -y --enablerepo=ol7_MySQL56 install psmisc mysql-server && yum clean all

RUN chown -R mysql:mysql /var/lib/mysql

ADD assets/init.sh /init.sh

VOLUME /var/lib/mysql

CMD ["/init.sh"]
