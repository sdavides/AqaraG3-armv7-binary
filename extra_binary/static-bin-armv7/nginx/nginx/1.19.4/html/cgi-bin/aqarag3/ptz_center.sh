#!/bin/sh
#
#set TimeZone /etc/TZ on shell for log
export TZ="$(cat /etc/TZ)"
#
#
printf "Content-type: text/plain\n\n"

/data/bin/mi_motor -x 0 -y -1 -a 5000 -b 5000
