#!/usr/bin/env sh

DISK=$(df -H | head -2 | tail -1 | awk '{print $4}')

DISKICON=󰋊

sketchybar -m --set $NAME icon=$DISKICON label="$DISK"