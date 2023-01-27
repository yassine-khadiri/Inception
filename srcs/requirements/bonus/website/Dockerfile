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

COPY ./garage/* /home/$USER/Desktop/garage

EXPOSE 9000

CMD ["php-fpm7.3", "-F"]

