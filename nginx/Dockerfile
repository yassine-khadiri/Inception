# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/09 17:55:11 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/11 14:04:24 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN sudo apt update

RUN sudo apt install nginx -y 

RUN sudo apt-get -y install openssl

COPY index.html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
