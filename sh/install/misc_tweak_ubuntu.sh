#!/bin/bash

# datetime appearance
sudo apt install gnome-tweak-tool
# makes the date appear
gsettings set org.gnome.desktop.interface clock-show-date true
# switches the seconds display off
gsettings set org.gnome.desktop.interface clock-show-seconds false


# remove unused dirs - bit controversy
cd ~ && sudo rm -rf Music Videos Templates Pictures
sudo rm /etc/skel/examples.desktop ~/examples.desktop

