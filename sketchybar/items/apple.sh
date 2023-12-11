#!/usr/bin/env sh

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

sketchybar --add item           apple.logo left                             \
                                                                            \
           --set apple.logo     icon=󰀵                                      \
                                icon.font="$FONT:Black:22.0"                \
                                icon.color=$WHITE                           \
                                background.padding_right=15                 \
                                label.drawing=off                           \