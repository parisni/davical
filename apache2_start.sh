#!/bin/bash

/usr/sbin/httpd -e error -E /var/log/apache2/apache-start.log -DFOREGROUND && tail -f /dev/null
