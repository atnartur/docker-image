FROM debian:latest

ADD docker-install.sh .
RUN ./docker-install.sh

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ADD docker-compose-install.sh .
RUN ./docker-compose-install.sh
