#!/bin/bash

USE_PAMAC=$(which apt-get >/dev/null 2>&1 && echo "true")
USE_APT_GET=$(which apt-get >/dev/null 2>&1 && echo "true")

if [ -n $USE_APT_GET ]
then
    sudo aptitude install xdotool
fi

if [ -n $USE_PAMAC ]
then
    pamac install xdotool
fi

sudo ln -s $(pwd)/sp /usr/local/bin/
