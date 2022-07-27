FROM debian:buster

RUN apt-get update && \
apt-get install mariadb-server -y

WORKDIR /home
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh


# ENTRYPOINT ["/bin/sh", "/home/entrypoint.sh"]
