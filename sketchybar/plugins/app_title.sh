TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

#case "$SENDER" in "front_app_switched")
#        sketchybar --set $NAME label="$TITLE"
#        ;;
#esac
sketchybar --set $NAME label="$TITLE"
