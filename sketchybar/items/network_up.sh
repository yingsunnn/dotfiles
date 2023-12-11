#!/usr/bin/env sh

sketchybar -m --add item network_up right                         \
              --set network_up update_freq=1                      \
                        script="$PLUGIN_DIR/network_up.sh"        \
                        icon.font="$FONT:Bold:$ICON_SIZE"        \
                        icon.padding_left=$ICON_PADDING                \
                        icon.padding_right=$ICON_PADDING               \
                        icon.color=$ICON_COLOR \
                        label.color=$WHITE \
                        label.font="$FONT:Bold:$FONT_SIZE" \
                        label.padding_right=$LABEL_PADDING_RIGHT \
                        background.height=$BACKGROUND_HEIGHT \
                        background.color=$BACKGROUND \
                        background.corner_radius=$CORNER_RADIUS \
                        background.padding_right=$BACKGROUND_PADDING_RIGHT