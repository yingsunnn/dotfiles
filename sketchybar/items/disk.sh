#!/usr/bin/env sh

sketchybar --add item disk right                              \
           --set disk script="$PLUGIN_DIR/disk.sh"            \
                      update_freq=4                           \
                      icon.font="$FONT:Bold:16.0"        \
                      icon.padding_left=5                \
                      icon.padding_right=5               \
                      icon.color=$WHITE \
                      label.color=$WHITE \
                      label.font="$FONT:Bold:14.0" \
                      label.padding_right=10 \
                      background.height=26 \
                      background.color=$BACKGROUND \
                      background.corner_radius=$CORNER_RADIUS \
                      background.padding_right=5