all: up

up:
	sudo mkdir -p /home/sdummett/data/database
	sudo mkdir -p /home/sdummett/data/website
	if ! cat /etc/hosts | grep '127.0.0.1 sdummett.42.fr'; then \
		sudo chmod 777 /etc/hosts; \
		sudo echo "127.0.0.1 sdummett.42.fr" >> /etc/hosts; \
	fi
	sudo docker-compose -f srcs/docker-compose.yml up --build

down:
	sudo docker-compose -f srcs/docker-compose.yml down

fclean: down
	sudo docker system prune -a
	sudo rm -rf /home/sdummett

re: fclean up

.PHONY: all up down fclean
