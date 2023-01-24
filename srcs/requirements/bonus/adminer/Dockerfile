# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/23 14:21:28 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/23 15:40:15 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y php php-mysql && \
    apt-get install -y wget && \
    wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "/var/www/html/adminer.php"]
