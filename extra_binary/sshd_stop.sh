#!/bin/sh
#
#set TimeZone /etc/TZ on shell for log
export TZ="$(cat /etc/TZ)"
#
#
killall -9 sshd
#
sleep 2
