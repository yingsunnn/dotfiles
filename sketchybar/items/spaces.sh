#!/usr/bin/env bash

# SPACE_ICONS=("" "" "" "" "" "" "" "" "" "")
# SPACE_ICONS=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")
SPACE_ICONS=("1" "2" "3" "4" "5")

SPACE_CLICK_SCRIPT='yabai -m space --focus $SID 2>/dev/null'

for i in "${!SPACE_ICONS[@]}"; do
	sid=$(($i + 1))
	sketchybar --add space space.$sid left \
		--set space.$sid associated_space=$sid \
		icon=${SPACE_ICONS[i]} \
		icon.font="$FONT:Bold:$FONT_SIZE" \
		icon.padding_left=28 \
		icon.padding_right=28 \
		icon.highlight_color=$HIGHLIGHT \
		icon.color=$WHITE \
		background.padding_left=-10 \
		background.padding_right=-10 \
		background.height=$BACKGROUND_HEIGHT \
		background.corner_radius=$CORNER_RADIUS \
		background.color=$BACKGROUND \
		background.drawing=on \
		label.background.drawing=on \
		label.drawing=off \
		script="$PLUGIN_DIR/space.sh" \
		click_script="$SPACE_CLICK_SCRIPT"
done

sketchybar --set space.1 background.padding_left=-1

sketchybar --add item separator left \
	--set separator icon= \
	icon.font="$FONT:Regular:$ICON_SIZE" \
	background.padding_left=30 \
	background.padding_right=18 \
	label.drawing=off \
	label.color=$BACKGROUND \
	associated_display=active \
	icon.color=$BACKGROUND
	
