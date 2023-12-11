#!/usr/bin/env sh

sketchybar  --add item front_app left \
						--set front_app script="$PLUGIN_DIR/front_app.sh" \
														icon.drawing=off \
														background.padding_left=0 \
														background.padding_right=0 \
														background.height=$BACKGROUND_HEIGHT \
														background.color=$BACKGROUND \
														background.corner_radius=$CORNER_RADIUS \
														label.color=$WHITE \
														label.padding_left=$LABEL_PADDING_RIGHT \
														label.padding_right=$LABEL_PADDING_RIGHT \
														label.font="$FONT:Bold:$FONT_SIZE" \
														associated_display=active \
						--subscribe front_app front_app_switched

sketchybar --add item separator2 left \
	--set separator2 icon= \
	icon.font="$FONT:Regular:$ICON_SIZE" \
	background.padding_left=5 \
	background.padding_right=5 \
	label.drawing=off \
	label.color=$BACKGROUND \
	associated_display=active \
	icon.color=$BACKGROUND
