#!/bin/bash

# Take a sceenshot

SCR_PATH=`echo ~`/screenshots
mkdir -p $SCR_PATH

scrot -s "$SCR_PATH/%Y-%m-%d-%T.png"

