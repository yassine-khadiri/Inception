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

RUN apt-get update && apt-get install -y curl apt-transport-https
RUN curl https://dl.grafana.com/oss/release/grafana_9.3.2_amd64.deb --output grafana.deb
RUN apt-get install -y ./grafana.deb

WORKDIR /usr/share/grafana

EXPOSE 3000

CMD ["/usr/sbin/grafana-server", "--config", "/etc/grafana/grafana.ini", "--homepath", "/usr/share/grafana"]