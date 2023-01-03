#!/bin/bash
FOLDER="$HOME/.config/eww"
FILE="$HOME/.cache/eww/avatar.xyz"
if test -f "$FILE"; then
	rm "$FILE"
	eww -c $FOLDER close avatar
else
	eww -c $FOLDER open avatar
	eww -c $FOLDER close disclose
	touch "$FILE"
fi
