#!/bin/sh
#
#set TimeZone /etc/TZ on shell for log
export TZ="$(cat /etc/TZ)"
#
#
printf "Content-type: text/plain\n\n"

let angle_x=$(echo angle_x=$(/data/bin/mi_motor -g| sed 's/\,/\n/g' | grep "angle_x" | sed 's/\"angle_x": //g' | sed 's/\ //g'))
let angle_y=$(echo angle_y=$(/data/bin/mi_motor -g| sed 's/\,/\n/g' | grep "angle_y" | sed 's/\"angle_y": //g' | sed 's/\ //g'))
let incr=10
let result=$angle_x+$incr
/data/bin/mi_motor -x $result -y $angle_y -a 5000 -b 5000 
