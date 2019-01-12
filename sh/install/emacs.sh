#!/bin/bash
THISDIR="$(dirname "$(realpath "$0")")"

sudo apt install emacs
mkdir -p $HOME/.emacs.d
cp $THISDIR/emacs.common.el $HOME/.emacs.d
cd $HOME && touch .emacs

if grep -Fq "emacs.common.el" .emacs
then
    echo ".emacs already load emacs.common.el - do nothing"
else
    echo ".emacs now will load emacs.common.el first"
    echo ";; emacs.sh has touched this file" >> .emacs    # need at least 1 line for sed below to work
    # https://stackoverflow.com/questions/10587615/unix-command-to-prepend-text-to-a-file
    sed -i.old '1s;^;(load \"~/.emacs.d/emacs.common.el\")\n;' .emacs
    sed -i.old '1s;^;(package-initialize)\n;' .emacs
fi


