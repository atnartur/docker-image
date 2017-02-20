FROM debian:latest

ADD docker-install.sh .
RUN ./docker-install.sh

# From Docker`s image Dockerfile
# https://github.com/docker-library/docker/blob/a7fc73eef011c47cc2518149bc77a4b9bc7f9f41/1.12/Dockerfile
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ADD docker-compose-install.sh .
RUN ./docker-compose-install.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["sh"]