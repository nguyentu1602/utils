#!/bin/bash

sudo add-apt-repository ppa:videolan/master-daily &
sudo apt update &
sudo apt install ubuntu-restricted-extras  # install media codecs
sudo apt install vlc qtwayland5 &
