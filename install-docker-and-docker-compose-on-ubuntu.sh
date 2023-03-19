#!/bin/bash
  
echo 
echo '============================================================================================='
echo 'update packages and upgarde'
echo '============================================================================================='

# UPDATE OS 
sudo apt update
sudo apt upgrade -y

echo 
echo '============================================================================================='
echo 'removing old version of docker docker-compose docker.io'
echo '============================================================================================='

# REMOVE OLD DOCKER
sudo apt remove docker docker-compose docker.io  -y
sudo rm /usr/bin/docker-compose
sudo apt autoremove -y

echo 
echo '============================================================================================='
echo 'installing leatest version of docker'
echo '============================================================================================='

#INSTALL LEATEST docker AND docker-compose
sudo apt install docker.io -y

echo 
echo '============================================================================================='
echo 'installing 1.29.0 version of docker-compose'
echo '============================================================================================='

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

echo 
echo '============================================================================================='
echo 'get docker version'
echo '============================================================================================='

sudo docker -v

echo 
echo '============================================================================================='
echo 'get docker-compose version'
echo '============================================================================================='


sudo docker-compose -v

echo 
echo '============================================================================================='
echo 'test can run hello-world image with docker'
echo '============================================================================================='

# TEST DOCKER WORKS
sudo docker run hello-world

echo 
echo '============================================================================================='
echo 'get containers that are running in docker'
echo '============================================================================================='

sudo docker ps -a
