UPTIME_ICON=

BOOT_TIME=`sysctl -n kern.boottime | awk '{print $4}' | sed 's/,//g'`
UNIXT_TIME=`date +%s`
TIME_AGO=$(($UNIXT_TIME - $BOOT_TIME))

UP_TIME=`awk -v time=$TIME_AGO \
'BEGIN {
 seconds = time % 60; 
 minutes = int(time / 60 % 60); 
 hours = int(time / 60 / 60 % 24); 
 printf("%.0f:%.0f:%.0f", hours, minutes, seconds); 
 exit }'`

UP_DAYS=`expr $TIME_AGO / 60 / 60 % 24`

UP_DAYS_TIME=""
if [ $UP_DAYS -gt 0 ]
then
  UP_DAYS_TIME="$UP_DAYS days, $UP_TIME"
else
  UP_DAYS_TIME="$UP_TIME"
fi

sketchybar --set $NAME icon=$UPTIME_ICON label="$UP_DAYS_TIME"