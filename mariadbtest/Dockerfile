FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

ENTRYPOINT [ "/tmp/script.sh" ]

EXPOSE 3306

CMD [ "mysqld" ]


# FROM debian:buster

# RUN apt-get update && \
#     apt-get install -y mariadb-server

# COPY ./tools/mariadb.sh /tmp/mariadb.sh

# RUN chmod +x /tmp/mariadb.sh

# ENTRYPOINT [ "/tmp/mariadb.sh" ]

# EXPOSE 3306

# CMD ["mysqld"]