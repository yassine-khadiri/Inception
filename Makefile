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
	$(shell mkdir -p /home/ykhadiri/data/db)
	$(shell mkdir -p /home/ykhadiri/data/wordpress)
	$(shell mkdir -p /home/ykhadiri/data/prometheus/prometheus_data)
	$(shell mkdir -p /home/ykhadiri/data/grafana)
	docker-compose -f $(DOCKER_COMPOSE) up -d --build

down:
	docker-compose -f $(DOCKER_COMPOSE) down

clean:
	docker rm -f $$(docker ps -a -q)
	docker volume rm $$(docker volume ls -q)
	docker network prune -f
	$(shell sudo rm -fr /home/ykhadiri/data)

fclean: clean
	docker rmi -f $$(docker images -q)
