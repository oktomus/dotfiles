#!/bin/bash
FLAGS=$(xset -q | awk 'NR==2' | awk '{ print $10 }')
echo $FLAGS
if [ "$FLAGS" = 00000000 ] || [ "$FLAGS" = 00000002 ] ; then
    xset led 3
else
    xset led off
fi
