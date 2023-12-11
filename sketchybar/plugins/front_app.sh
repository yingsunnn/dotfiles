#!/usr/bin/env sh

TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')
RIGHT_ARROW=
case "$SENDER" in "front_app_switched")
        sketchybar --set $NAME label="$INFO $RIGHT_ARROW $TITLE"
        ;;
esac
