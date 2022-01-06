#!/bin/bash

#SET THE TIMEZONE
#apk add --update tzdata
#cp /usr/share/zoneinfo/$TIME_ZONE /etc/localtime
#echo $TIME_ZONE > /etc/timezone
#apk del tzdata
#
##PREPARE THE PERMISSIONS FOR VOLUMES
#mkdir 	/config
#chown -R root:root /config
#chmod -R 755 /config
#mv -n 	/apache.conf /config/apache.conf
#mv -n	/davical.php /config/davical.php
#chown -R root:root /config
#chmod -R 755 /config
#chown root:apache /config/davical.php
#chmod u+rwx,g+rx /config/davical.php

#LAUNCH THE INIT PROCESS
/sbin/initialize_db.sh &&  /usr/sbin/httpd -e error -E /var/log/apache2/apache-start.log -DFOREGROUND && tail -f /dev/null
