FROM alpine:3.16

RUN	apk update && apk upgrade && apk add --no-cache \
        openssl
RUN apk add nginx=1.18.0-r15 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.13/main

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -days 365 -newkey rsa:4096 -nodes \
	-keyout /etc/nginx/ssl/sdummett.42.fr.key \
	-out /etc/nginx/ssl/sdummett.42.fr.crt \
	-subj "/C=FR/ST=Ile-de-France/L=Paris/O=42-Paris/OU=42Stud/CN=sdummett"

# nginx config
RUN mkdir -p /run/nginx
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]
