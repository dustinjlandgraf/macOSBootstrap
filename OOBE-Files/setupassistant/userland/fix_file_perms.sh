#!/bin/sh

/bin/echo "Status: Checking file permissions..." > /var/tmp/depnotify.log
/usr/bin/chflags -R nouchg ~
/usr/sbin/diskutil resetUserPermissions / `id -u`
/bin/echo "Status: File permissions are correct." > /var/tmp/depnotify.log

exit 0
