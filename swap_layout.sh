#!/bin/bash
CURRENT=$(setxkbmap -query | awk '/^lay/  {print $2}')
if [ $CURRENT = "us" ];then
  setxkbmap cz
  echo CZ > "$HOME"/.current_layout
else
  setxkbmap us
  echo US > "$HOME"/.current_layout
fi
