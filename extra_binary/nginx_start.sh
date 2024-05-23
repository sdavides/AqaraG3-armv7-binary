#!/bin/sh
#
#set TimeZone /etc/TZ on shell for log
export TZ="$(cat /etc/TZ)"
#
#add binary on environment
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/mnt/sdcard/extra_binary/armv7l-eabihf
#
mkdir /var/log/ 2>/dev/null
#
killall -9 nginx 2>/dev/null
sleep 1
killall -9 fcgiwrap 2>/dev/null
sleep 1
#
#start cgi socket 
rm -f /tmp/fcgiwrap.sock
/mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/conf/fcgiwrap -s unix:/tmp/fcgiwrap.sock 2>/dev/null &
#
# START
#
#built with OpenSSL 1.1.1h  22 Sep 2020
#TLS SNI support enabled
#configure arguments: --prefix=/opt --conf-path=/opt/etc/nginx.conf --error-log-path=/var/log/nginx.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --with-http_ssl_module --with-http_sub_module --with-http_gzip_static_module --with-http_realip_module --with-http_v2_module --with-http_realip_module --with-http_addition_module --with-http_gzip_static_module --with-threads --with-poll_module --with-stream --with-stream_realip_module --with-stream_ssl_module --with-stream_ssl_preread_module --with-cc-opt='-static -static-libgcc' --with-ld-opt=-static --with-openssl=../openssl-1.1.1h
#
#
# log /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/logs/
# htdocs /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/html
# cgi /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/html/cgi-bin/
# php /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/html/php/
#
# nginx.conf "/php/*" redirect ->port 8180 phpweb deamon
/mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4/nginx -p /mnt/sdcard/extra_binary/static-bin-armv7/nginx/nginx/1.19.4 -c nginx.conf
