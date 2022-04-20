#!/bin/bash
if [[ $(setxkbmap -query | grep layout | cut -d' ' -f6) == "us" ]];
then
    setxkbmap -option ctrl:nocaps latam
else
    setxkbmap -option ctrl:nocaps us
fi && notify-send \
    -i /home/carlos/documents/git/puntos/pmenu/src/keyboard.png \
    "Keymap" \
    "Current keymap: $(setxkbmap -query | grep layout | cut -d' ' -f6)"
