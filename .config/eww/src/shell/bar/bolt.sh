#!/bin/bash
FOLDER="$HOME/.config/eww"
FILE="$HOME/.cache/eww/bolt.xyz"
if test -f "$FILE"; then
	rm "$FILE"
	eww -c $FOLDER close bolt
else
	eww -c $FOLDER open bolt
	touch "$FILE"
fi
