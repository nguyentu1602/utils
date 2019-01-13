#!/bin/bash
THISDIR="$(dirname "$(realpath "$0")")"
sudo apt install git

echo "Globally set ingore patterns. Force copy of .gitignore_global over to $HOME with a backup of SOURCE first"
cp -b $THISDIR/.gitignore_global $HOME/.gitignore_global    # make a back up first
git config --global core.excludesfile ~/.gitignore_global   # enable the data

echo "Enable git credential caching for a week. Go over to unify/src/envcommon/git_config.sh to finish"
git config --global credential.helper "cache --timeout=604800" 




