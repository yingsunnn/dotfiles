#!/usr/bin/env sh

sketchybar -m --add item uptime right                         \
              --set uptime update_freq=10                      \
                        script="$PLUGIN_DIR/uptime.sh" \
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