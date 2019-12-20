#!/bin/bash

# https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-18-04-bionic-beaver-linux
## Automatically install using the standard Ubuntu Repository

sudo ubuntu-drivers autoinstall
echo "nvidia drivers are done - reboot to complete"

# TODO: install CUDA etc

