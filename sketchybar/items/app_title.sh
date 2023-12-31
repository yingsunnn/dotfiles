#!/usr/bin/env sh

sketchybar  --add item app_title left \
						--set app_title script="$PLUGIN_DIR/app_title.sh" \
                            update_freq=1 \
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
														associated_display=active 
