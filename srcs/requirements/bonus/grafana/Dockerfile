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

RUN apt-get update
RUN apt-get install -y apt-transport-https curl gnupg
RUN curl https://packages.grafana.com/gpg.key | apt-key add -
RUN echo "deb https://packages.grafana.com/oss/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list
RUN apt-get update
RUN apt-get install -y grafana

RUN addgroup --system grafana && \
    adduser --system --no-create-home --ingroup grafana grafana

USER grafana

EXPOSE 3000

CMD [ "grafana-server", "--homepath", "/usr/share/grafana", "cfg:default.paths.data=/var/lib/grafana/data", "cfg:default.paths.logs=/var/log/grafana", "cfg:default.paths.plugins=/var/lib/grafana/plugins" ]
