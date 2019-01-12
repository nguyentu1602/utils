#!/bin/bash

########################################################
# install docker
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
########################################################

sudo apt install apt-transport-https ca-certificates curl software-properties-common

## Then add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update

## make sure to install from the Docker repo instead of Ubuntu repo
apt-cache policy docker-ce

sudo apt install docker-ce

