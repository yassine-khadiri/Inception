# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 19:03:44 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/21 20:25:27 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install php php7.3-fpm -y && \
    apt-get install curl -y && \
    apt-get install php-mysql -y

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN mkdir /run/php

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

ENTRYPOINT ["/tmp/script.sh"]

EXPOSE 9000

CMD ["php-fpm7.3", "-F"]
