UPTIME_ICON=
UPTIME_LABLE=$(uptime | awk '{print $3}')

sketchybar --set $NAME icon=$UPTIME_ICON label=$UPTIME_LABLE