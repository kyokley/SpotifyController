#!/bin/sh

#I borrowed the following code from somewhere and cannot remember where it came from.
#If this belongs to you, let me know so I can give the proper props!

# Get spotify window id, this works only if spotify is runnin and playing
id=$(xdotool search --name "Spotify Premium")
[ $? -ne 0 ] && echo "Failed" && exit 1

# Send keystrokes to control spotify
[ "$1" = "n" ] && xdotool key --window $id Control_L+Right
[ "$1" = "p" ] && xdotool key --window $id Control_L+Left
[ "$1" = "pause" ] && xdotool key --window $id space
