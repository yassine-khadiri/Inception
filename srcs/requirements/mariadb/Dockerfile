# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 17:56:12 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/16 18:01:00 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt update && \
    apt install -y mariadb-server

# COPY ./tools/script.sh /tmp/script.sh

# RUN chmod +x /tmp/script.sh

# ENTRYPOINT [ "/tmp/script.sh" ]

CMD ["mysqld"]