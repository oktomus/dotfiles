#!/bin/sh

# Load ressources from xdefaults and xresources
xrdb ~/.Xresources
[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults

# Private xinit steps 
[[ -f ~/.xinit_local ]] && sh ~/.xinit_local

xset -b
# Swape escape and caps
setxkbmap -option caps:escape

for f in ~/.i3log/log-*.txt; do mv "$f" "$f.old"; done
exec /usr/bin/i3 >~/.i3log/log-$(date +'%F-%k-%M-%S').txt 2>&1
