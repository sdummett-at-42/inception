FROM alpine:3.16

RUN	apk update && apk upgrade && apk add --no-cache \
        mariadb \
        mariadb-client
        
COPY tools/docker-entrypoint.sh /tmp/docker-entrypoint.sh

ENTRYPOINT ["sh", "/tmp/docker-entrypoint.sh"]
