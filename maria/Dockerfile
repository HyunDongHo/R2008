FROM mariadb:10.4.7

ENV MYSQL_ROOT_PASSWORD=mysql

COPY initdb.sql /docker-entrypoint-initdb.d/
COPY test.sh /docker-entrypoint-initdb.d/
COPY my.cnf /etc/mysql/

#RUN ["/usr/local/bin/docker-entrypoint.sh", "mysqld", "--datadir", "/initialized-db"]
#RUN ["/usr/local/bin/docker-entrypoint.sh", "mysqld", "--datadir", "/initialized-db", "--aria-log-dir-path"]
