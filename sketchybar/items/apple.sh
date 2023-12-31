#!/usr/bin/env sh

sketchybar  --add item          apple.logo left                             \
                                                                            \
            --set apple.logo    icon=󰀵                                      \
                                icon.font="$FONT:Black:18.0"                \
                                icon.color=$ICON_COLOR                           \
                                icon.padding_left=$ICON_PADDING \
                                icon.padding_right=$ICON_PADDING \
                                background.padding_right=$BACKGROUND_PADDING_RIGHT                \
                                background.height=$BACKGROUND_HEIGHT \
                                background.color=$BACKGROUND \
                                background.corner_radius=$CORNER_RADIUS \
                                label.drawing=off