TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

sketchybar --set $NAME label="$TITLE"
