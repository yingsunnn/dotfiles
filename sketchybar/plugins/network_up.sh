#!/usr/bin/env bash

UPDOWN=$(ifstat -i "en1" -b 0.1 1 | tail -n1)
UP=$(echo $UPDOWN | awk "{ print \$2 }" | cut -f1 -d ".")

UP_FORMAT=""
if [ "$UP" -gt "999" ]; then
  UP_FORMAT=$(echo $UP | awk '{ printf "%03.0f Mb", $1 / 1000}')
else
  UP_FORMAT=$(echo $UP | awk '{ printf "%03.0f kb", $1}')
fi

NETWORK_UP_ICON=
sketchybar -m --set $NAME label="$UP_FORMAT" icon="$NETWORK_UP_ICON"