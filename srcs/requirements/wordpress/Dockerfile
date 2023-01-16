# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 19:03:44 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/16 17:06:20 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt update && \
    apt install php-fpm -y && \
    apt install wget -y

RUN wget https://wordpress.org/latest.tar.gz

RUN tar -xvf latest.tar.gz

RUN rm -rf latest.tar.gz
