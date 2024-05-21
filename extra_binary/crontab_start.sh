#!/bin/sh
#
#set TimeZone /etc/TZ on shell
export TZ="$(cat /etc/TZ)"
#
#
mkdir /var/log/ 2>/dev/null
mkdir /var/spool/cron/crontabs -p 2>/dev/null 
#
killall -9 crond 2>/dev/null
sleep 2
#
#crond -L /mnt/sdcard/logs/crontab.log #add log
crond
#
# start crontab whith config
crontab /mnt/sdcard/extra_binary/crontab.conf
