#!/bin/bash
FOLDER="$HOME/Downloads/vile"
FILE="$HOME/.cache/eww/chono.xyz"
if test -f "$FILE"; then
	rm "$FILE"
	eww -c $FOLDER close chrono
else
	eww -c $FOLDER open chrono
	touch "$FILE"
fi
