# Comands from Docker official instruction
# https://docs.docker.com/engine/installation/linux/debian/
apt-get update && 
apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common -y && 
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && 
apt-key fingerprint 0EBFCD88 &&
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable" &&

apt-get update && 
apt-get install docker-ce -y &&
docker -v &&

echo "" && 
echo "add current user to docker group: sudo usermod -a -G docker USERNAME"
