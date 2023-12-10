#!/usr/bin/env sh

sketchybar -m --add item network_up right                         \
              --set network_up update_freq=1                      \
                        script="$PLUGIN_DIR/network_up.sh"        \
                        icon.font="$FONT:Bold:16.0"        \
                        icon.padding_left=5                \
                        icon.padding_right=5               \
                        icon.color=$WHITE \
                        label.color=$WHITE \
                        label.font="$FONT:Bold:14.0" \
                        label.padding_right=10 \
                        background.height=26 \
                        background.color=$SURFACE \
                        background.corner_radius=$CORNER_RADIUS \
                        background.padding_right=5