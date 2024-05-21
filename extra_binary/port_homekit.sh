#!/bin/sh
#
netstat -anp|grep ha_master | grep LISTEN | grep tcp| grep -v 0.0.0.0 | sed 's/tcp        0      0 ::://'|awk '{print substr($1,1)}' > /tmp/port_homekit.txt
