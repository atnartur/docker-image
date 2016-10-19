FROM debian:latest

# Comands from Docker official instruction
# https://docs.docker.com/engine/installation/linux/debian/
RUN apt-get update && \
	apt-get install apt-transport-https ca-certificates -y && \
	apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
	echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list && \
	apt-get update && \
	apt-cache policy docker-engine && \
	apt-get install docker-engine -y && \
	docker -v

# From Docker`s image Dockerfile
# https://github.com/docker-library/docker/blob/a7fc73eef011c47cc2518149bc77a4b9bc7f9f41/1.12/Dockerfile
COPY docker-entrypoint.sh /usr/local/bin/

# Comands from docker-compose official instruction
# https://docs.docker.com/compose/install/
RUN apt-get install curl -y && \
	curl -L "https://github.com/docker/compose/releases/download/1.8.0/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose && \
	chmod +x /usr/local/bin/docker-compose && \
	docker-compose --version

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]