( sleep 3; printf "root\n"; sleep 1; printf "clear\n"; sleep 1; printf "agetprop sys.camera_rtsp_url\n"; sleep 1; ) | telnet 192.168.1.4 | grep rtsp | sed -e '1d' > ./rtsp_aqara.js
