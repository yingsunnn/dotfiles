#!/usr/bin/env bash

UPDOWN=$(ifstat -i "en0" -b 0.1 1 | tail -n1)
DOWN=$(echo $UPDOWN | awk "{ print \$1 }" | cut -f1 -d ".")

DOWN_FORMAT=""
if [ "$DOWN" -gt "999" ]; then
  DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%03.0f Mb", $1 / 1000}')
else
  DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%03.0f kb", $1}')
fi

NETWORK_DOWN_ICON=

sketchybar -m --set $NAME label="$DOWN_FORMAT" icon="$NETWORK_DOWN_ICON"