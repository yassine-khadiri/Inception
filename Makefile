# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/14 15:13:49 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/21 20:00:13 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE=./srcs/docker-compose.yml

up:
	docker-compose -f $(DOCKER_COMPOSE) up -d --build

down:
	docker-compose -f $(DOCKER_COMPOSE) down

clean:
	docker container prune -f
	docker volume prune -f
	docker network prune -f

fclean:
	docker image prune -f -a
