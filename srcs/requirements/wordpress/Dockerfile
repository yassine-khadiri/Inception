# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 19:03:44 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/26 00:51:26 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y php php7.3-fpm \
    curl php-mysql sendmail

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN mkdir /run/php

COPY ./tools/wordpress.sh /tmp/wordpress.sh

RUN chmod +x /tmp/wordpress.sh

ENTRYPOINT ["/tmp/wordpress.sh"]

EXPOSE 9000

CMD ["php-fpm7.3", "-F"]
