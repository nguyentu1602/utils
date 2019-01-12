#!/bin/bash

# install partner repositories - below can only use once
# For more, check https://askubuntu.com/questions/14629/how-do-i-enable-the-partner-repository
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"

sudo apt update && sudo apt upgrade
sudo apt install curl 
pip install --user kaggle
# sudo apt install nautilus-dropbox
