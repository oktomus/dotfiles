#!/bin/bash
killall conky
conky -c "$HOME/.config/conky/clock.conky" &
conky -c "$HOME/.config/conky/system.conky" &
exit
