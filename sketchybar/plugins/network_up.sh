#!/usr/bin/env bash

UPDOWN=$(ifstat -i "en1" -b 0.1 1 | tail -n1)
UP=$(echo $UPDOWN | awk "{ print \$2 }" | cut -f1 -d ".")

UP_FORMAT=""
if [ "$UP" -gt "999" ]; then
  UP_FORMAT=$(echo $UP | awk '{ printf "%03.0f Mbps", $1 / 1000}')
else
  UP_FORMAT=$(echo $UP | awk '{ printf "%03.0f kbps", $1}')
fi

sketchybar -m --set $NAME label="$UP_FORMAT" icon.highlight=$(if [ "$UP" -gt "0" ]; then echo "on"; else echo "off"; fi)