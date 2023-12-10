#!/usr/bin/env bash

WEATHER="$(curl -s 'wttr.in/Montreal?format=%c%f')"
LABEL="$(curl -s 'wttr.in/Montreal?format=%c%f' | awk '{print $2}')"
ICON="$(echo "${WEATHER:0:1}")"

sketchybar -m --set $NAME icon=$ICON label=$LABEL