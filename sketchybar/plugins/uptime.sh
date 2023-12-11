UPTIME_ICON=
UPTIME_LABLE=$(uptime | awk '{print $3}' | sed 's/.$//')

sketchybar --set $NAME icon=$UPTIME_ICON label=$UPTIME_LABLE