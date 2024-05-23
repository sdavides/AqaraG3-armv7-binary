# AqaraG3-armv7-binary
Add static binary on Aqara G3 cam - NGINX - PHP - CGI ...

![immagine](https://github.com/sdavides/AqaraG3-armv7-binary/assets/31100253/62d11ab0-28c1-4b3b-8b73-f60dd386319b)

## Info ##
This is a repository of armv7l static binaries of various versions compatible with AqaraG3.

## Requirement ##
* Telnetd enable
     * Manual downgrade firmware [3.3.4](https://github.com/niceboygithub/AqaraCameraHubfw/blob/main/stock/G3) (post_init.sh enable)
     * Open telnet QR method [aQRootG3](https://github.com/Wh1terat/aQRootG3) (create post_init.sh)
     * Manual update firmware [3.3.9](https://github.com/niceboygithub/AqaraCameraHubfw/blob/main/stock/G3) (post_init.sh enable)
     * Update last firmware from command [custom firmware](https://github.com/niceboygithub/AqaraCameraHubfw/tree/main/modified/G3#flash-g3-custom-firmware-method)
         * hack done! (post_init.sh enable)
    
## Install ##
* Download folder "extra_binary" on sdcard root folder:
  * path final is "/mnt/sdcard/extra_binary/"
      * add start script on "/data/scripts/post_init.sh"
        * Nginx+CGI
        * Crontab
        * PHP
        * SSH
        * and more....
   
## NGINX ##

add on "/data/scripts/post_init.sh"

    # Start NGINX+CGI 8080 - /php/ ->8081
    /mnt/sdcard/extra_binary/nginx_start.sh
    
![immagine](https://github.com/sdavides/AqaraG3-armv7-binary/assets/31100253/6fe1e191-7309-404a-a5f8-a8c39e0cf05c)

## CGI-bin ##
Server status and send command from cgi

    https://192.168.1.4/cgi-bin/server_status
    
![immagine](https://github.com/sdavides/AqaraG3-armv7-binary/assets/31100253/a91b2f10-1e1d-4284-b350-a3f9312e3a2b)

    https://192.168.1.4/cgi-bin/cmd? ls /tmp #example ls /tmp

![immagine](https://github.com/sdavides/AqaraG3-armv7-binary/assets/31100253/70fd9d89-5c4c-42e9-8d5b-3b1f426bf8c3)

   ---

Get prop and move PTZ

    https://192.168.1.4/cgi-bin/aqarag3/get_prop.sh?prop=sys.camera_rtsp_url #example sys.camera_rtsp_url json

![immagine](https://github.com/sdavides/AqaraG3-armv7-binary/assets/31100253/854d6fee-39d3-4fed-901c-8613927a24d0)

    https://192.168.1.4/cgi-bin/aqarag3/ptz_right.sh #example move right ptz

![immagine](https://github.com/sdavides/AqaraG3-armv7-binary/assets/31100253/f5224cc3-e051-4dec-9fd1-e9bf53a83485)


## PHP ##
add on "/data/scripts/post_init.sh"

    # Start PHP-WEB 8081
    /mnt/sdcard/extra_binary/php_start.sh
    
![immagine](https://github.com/sdavides/AqaraG3-armv7-binary/assets/31100253/d4407c7e-3cef-4453-9ea3-1e63f6cdad00)

## SSH ##
add on "/data/scripts/post_init.sh"

    # Start SSHD
    # WARNING: password for root change in "root"
    /mnt/sdcard/extra_binary/sshd_start.sh

## Crontab ##
add on "/data/scripts/post_init.sh"

    # Start Crontab
    /mnt/sdcard/extra_binary/crontab_start.sh

## Extra bin ##
linked binary on bash

    export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/mnt/sdcard/extra_binary/armv7l-eabihf

---

## See also ##

[AqaraPOST-Homeassistant](https://github.com/sdavides/AqaraPOST-Homeassistant) AqaraG3 HomeAssistant

[AqaraCameraHubfw](https://github.com/niceboygithub/AqaraCameraHubfw) HACK 

[m3u8-HLS-Homeassistant](https://github.com/sdavides/m3u8-HLS-Homeassistant/)

[EPGItaly-Homeassistant](https://github.com/sdavides/EPGItaly-Homeassistant/)
