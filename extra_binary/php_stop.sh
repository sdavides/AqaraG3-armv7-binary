#!/bin/sh
#
#set TimeZone /etc/TZ on shell for log
export TZ="$(cat /etc/TZ)"
#
#
killall -9 php-8.1.8 2>/dev/null
killall -9 php-8.0.23 2>/dev/null
killall -9 php-7.2.34 2>/dev/null
#
sleep 2