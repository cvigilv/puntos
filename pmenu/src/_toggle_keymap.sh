#!/bin/bash
if [[ $(setxkbmap -query | grep layout | cut -d' ' -f6) == "us" ]];
then
    setxkbmap latam
else
    setxkbmap us
fi && notify-send \
    -i /home/carlos/documents/git/puntos/pmenu/src/keyboard.png \
    "Keymap" \
    "Current keymap: $(setxkbmap -query | grep layout | cut -d' ' -f6)"
