# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/23 19:20:09 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/26 00:52:09 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get install -y redis-server &&\
    apt-get install -y php-redis

COPY ./tools/redis.sh /tmp/redis.sh

RUN chmod +x /tmp/redis.sh

ENTRYPOINT ["/tmp/redis.sh"]

EXPOSE 6379

CMD ["redis-server", "--protected-mode", "no"]
