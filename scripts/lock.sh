#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f /home/oktomus/Images/icons/lock-icon.png ]] && convert /tmp/screen.png /home/oktomus/Images/icons/lock-icon.png -gravity center -composite -matte /tmp/screen.png
i3lock -u -i /tmp/screen.png
