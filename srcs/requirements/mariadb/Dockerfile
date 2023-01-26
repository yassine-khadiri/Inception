# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 17:56:12 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/26 00:51:49 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server

COPY ./tools/mariadb.sh /tmp/mariadb.sh

RUN chmod +x /tmp/mariadb.sh

ENTRYPOINT [ "/tmp/mariadb.sh" ]

EXPOSE 3306

CMD ["mysqld"]
