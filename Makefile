# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ykhadiri <ykhadiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/14 15:13:49 by ykhadiri          #+#    #+#              #
#    Updated: 2023/01/20 20:36:37 by ykhadiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE=./srcs/docker-compose.yml

up:
	docker-compose $(DOCKER_COMPOSE) up -d --build

down:
	docker-compose $(DOCKER_COMPOSE) down

clean:
	docker container prune -f
	docker volume prune -f
	docker network prune -f

fclean:
	docker rmi -f $(docker images)
