#!/bin/sh

# Load ressources from xdefaults and xresources
xrdb ~/.Xresources
[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults

# Private xinit steps 
[[ -f ~/.xinit_local ]] && sh ~/.xinit_local

xset -b

# Swape escape and caps
setxkbmap -option caps:swapescape
redshift &
~/.fehbg &
urxvt -name weechat -e weechat &

exec i3
