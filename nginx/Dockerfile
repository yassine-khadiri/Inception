# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 17:55:11 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/09 18:13:51 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN sudo apt update

RUN sudo apt install nginx -y 

COPY index.html /var/www/html

EXPOSE 80

RUN ["nginx", "-g", "daemon off;"]