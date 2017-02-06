# Comands from Docker official instruction
# https://docs.docker.com/engine/installation/linux/debian/
apt-get update && 
apt-get install apt-transport-https ca-certificates -y && 
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && 
echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list && 
apt-get update && 
apt-cache policy docker-engine && 
apt-get install docker-engine -y &&
docker -v &&

echo "" && 
echo "add current user to docker group: sudo usermod -a -G docker USERNAME"
