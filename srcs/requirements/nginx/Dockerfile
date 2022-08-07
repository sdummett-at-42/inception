FROM alpine:3.16

RUN apk update

RUN apk add nginx vim openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/sdummett.42.fr.key \
	-out /etc/nginx/ssl/sdummett.42.fr.crt \
	-subj "/C=FR/ST=Ile-de-France/L=Paris/O=42-Paris/OU=inception project/CN=sdummett"


COPY ./conf/index.html /var/www/
COPY ./conf/nginx.conf /etc/nginx/http.d/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
