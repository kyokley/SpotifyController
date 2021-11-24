#!/bin/bash

USE_PAMAC=$(which apt-get >/dev/null 2>&1 && echo "true")
USE_APT_GET=$(which apt-get >/dev/null 2>&1 && echo "true")

if [ $USE_APT_GET == 'true' ]
then
    sudo aptitude install xdotool
fi

if [ $USE_PAMAC == 'true' ]
then
    pamac install xdotool
fi

sudo ln -s $(pwd)/SpotifyController/sp /usr/local/bin/
