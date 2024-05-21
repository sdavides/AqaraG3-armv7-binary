#!/bin/sh
#
#set TimeZone /etc/TZ on shell for log
export TZ="$(cat /etc/TZ)"
#
#
killall -9 sshd 2>/dev/null
sleep 2
mkdir /var/empty 2>/dev/null
#
adduser sshd 2>/dev/null #create user sshd
echo "sshd:sshd" | chpasswd 2>/dev/null #set pass sshd sshd
#
echo "root:root" | chpasswd 2>/dev/null #set pass root root
#
#
cp /mnt/sdcard/extra_binary/static-bin-armv7/sshd/id_rsa /tmp # cert not delete
cp /mnt/sdcard/extra_binary/static-bin-armv7/sshd/id_rsa.pub /tmp # cert not delete
chmod 400 /tmp/id_rsa # cert not delete
chmod 400 /tmp/id_rsa.pub # cert not delete
#
#
/mnt/sdcard/extra_binary/static-bin-armv7/sshd/sshd  -f /mnt/sdcard/extra_binary/static-bin-armv7/sshd/sshd.conf -h /tmp/id_rsa
