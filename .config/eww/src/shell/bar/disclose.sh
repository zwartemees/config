#!/bin/bash
FOLDER="$HOME/Downloads/vile"
FILE="$HOME/.cache/eww/disclose.xyz"
if test -f "$FILE"; then
	rm "$FILE"
	eww -c $FOLDER close disclose
else
	eww -c $FOLDER open disclose
	touch "$FILE"
fi
