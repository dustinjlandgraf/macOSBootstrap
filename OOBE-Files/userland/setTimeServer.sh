#!/bin/bash

/bin/echo "Status: Setting time server" > /var/tmp/depnotify.log
/usr/sbin/systemsetup -setusingnetworktime OFF
/usr/sbin/systemsetup -setnetworktimeserver time.nist.gov
/bin/sleep 1
/usr/sbin/systemsetup -setusingnetworktime ON
/bin/sleep 10
/usr/bin/defaults write /Library/Preferences/com.apple.mdmclient AutoRenewCertificatesEnabled -bool YES

exit 0