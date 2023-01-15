# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 19:03:44 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/15 14:03:37 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update

RUN apt-get install php-fpm \
    wget -y

RUN wget https://wordpress.org/latest.tar.gz

RUN tar -xvf latest.tar.gz
