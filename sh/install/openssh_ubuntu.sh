#!/bin/bash
THISDIR="$(dirname "$(realpath "$0")")"
sudo apt update
sudo apt install openssh-server
sudo ufw allow ssh
sudo systemctl enable ssh
sudo systemctl stop ssh
sudo systemctl start ssh




