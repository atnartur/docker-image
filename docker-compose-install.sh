# Comands from docker-compose official instruction
# https://docs.docker.com/compose/install/
apt-get install curl -y && 
curl -L "https://github.com/docker/compose/releases/download/1.8.0/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose && 
chmod +x /usr/local/bin/docker-compose && 
docker-compose --version