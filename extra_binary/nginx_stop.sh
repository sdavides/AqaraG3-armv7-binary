#!/bin/sh
#
#set TimeZone /etc/TZ on shell for log
export TZ="$(cat /etc/TZ)"
#
#
killall -9 nginx
killall -9 fcgiwrap
#
sleep 2
