#!/bin/bash
while true
do
	wallpaper=$(find "${HOME}/Pictures/wallpapers/" -type f | sort -R | tail -1)
	feh --bg-fill $wallpaper
	sleep 1200
done
