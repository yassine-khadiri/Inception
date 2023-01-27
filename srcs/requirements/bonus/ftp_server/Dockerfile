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

RUN apt-get update && \
    apt-get install -y vsftpd

COPY ./tools/ftp_server.sh /tmp/ftp_server.sh

RUN chmod +x /tmp/ftp_server.sh

EXPOSE 21

CMD ["/tmp/ftp_server.sh"]