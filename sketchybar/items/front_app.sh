#!/usr/bin/env sh

sketchybar  --add item front_app left \
						--set front_app script="$PLUGIN_DIR/front_app.sh" \
														icon.drawing=off \
														background.padding_left=0 \
														background.padding_right=5 \
														background.height=$BACKGROUND_HEIGHT \
														background.color=$BACKGROUND \
														background.corner_radius=$CORNER_RADIUS \
														label.color=$WHITE \
														label.padding_left=$LABEL_PADDING_RIGHT \
														label.padding_right=$LABEL_PADDING_RIGHT \
														label.font="$FONT:Bold:$FONT_SIZE" \
														associated_display=active \
						--subscribe front_app front_app_switched
