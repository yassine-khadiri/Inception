# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/25 20:11:30 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/26 00:50:15 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y prometheus

COPY ./conf/prometheus.yml /etc/prometheus/

EXPOSE 9090

CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
