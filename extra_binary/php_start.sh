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
# start php web server
# PHP 7.2
#/mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/php_bin/php-7.2.34 -S 0.0.0.0:8081 -t /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/html/php/ &> /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/logs/php.log & 2>/dev/null
# PHP 8.0
#/mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/php_bin/php-8.0.23 -S 0.0.0.0:8081 -t /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/html/php/ &> /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/logs/php.log & 2>/dev/null
# PHP 8.1
/mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/php_bin/php-8.1.8 -S 0.0.0.0:8081 -t /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/html/php/ &> /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/logs/php.log & 2>/dev/null
