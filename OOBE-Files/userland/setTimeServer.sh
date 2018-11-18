#!/bin/bash

/bin/echo "Status: Setting time server" > /var/tmp/depnotify.log
/usr/sbin/systemsetup -setusingnetworktime OFF >/dev/null 2>&1
/usr/sbin/systemsetup -setnetworktimeserver time.nist.gov >/dev/null 2>&1
/bin/sleep 1
/usr/sbin/systemsetup -setusingnetworktime ON >/dev/null 2>&1
/bin/sleep 10
/usr/bin/defaults write /Library/Preferences/com.apple.mdmclient AutoRenewCertificatesEnabled -bool YES >/dev/null 2>&1

exit 0