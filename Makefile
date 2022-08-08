
all: compose

compose:
	sudo mkdir -p /home/sdummett/data/db
	sudo mkdir -p /home/sdummett/data/wordpress
	if ! cat /etc/hosts | grep '127.0.0.1 sdummett.42.fr'; then \
		sudo chmod 777 /etc/hosts; \
		sudo echo "127.0.0.1 sdummett.42.fr" >> /etc/hosts; \
	fi
	docker-compose -f srcs/docker-compose.yaml build
	docker-compose -f srcs/docker-compose.yaml up -d

status:
	docker ps -a

down:
	docker-compose -f srcs/docker-compose.yaml down

fclean: down
	docker system prune -a

