#!/usr/bin/env sh

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

sketchybar --add event input_change 'AppleSelectedInputSourcesChangedNotification' \
	--add item input right --set input script="$PLUGIN_DIR/input.sh" \
	icon=󰥻 \
	icon.font="$FONT:Bold:$ICON_SIZE" \
	icon.color=$ICON_COLOR \
	icon.padding_left=$ICON_PADDING \
	icon.padding_right=$ICON_PADDING \
	label.color=$WHITE \
	label.font="$FONT:Bold:$FONT_SIZE" \
	label.padding_right=$LABEL_PADDING_RIGHT \
	background.height=$BACKGROUND_HEIGHT \
	background.color=$BACKGROUND \
	background.corner_radius=$CORNER_RADIUS \
	background.padding_right=$BACKGROUND_PADDING_RIGHT \
	--subscribe input input_change
