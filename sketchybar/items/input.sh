#!/usr/bin/env sh

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

sketchybar --add event input_change 'AppleSelectedInputSourcesChangedNotification' \
	--add item input right --set input script="$PLUGIN_DIR/input.sh" \
	icon=󰥻 \
	icon.font="$FONT:Bold:18.0" \
	icon.color=$WHITE \
	icon.padding_left=10 \
	icon.padding_right=5 \
	label.color=$WHITE \
	label.font="$FONT:Bold:14.0" \
	label.padding_right=10 \
	background.height=26 \
	background.color=$BACKGROUND \
	background.corner_radius=$CORNER_RADIUS \
	background.padding_right=5 \
	--subscribe input input_change
