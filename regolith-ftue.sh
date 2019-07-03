#!/bin/bash
# This script will be called after i3 starts. It's purpose is to do things
# that only make sense for the first time the user starts Regolith
# for a particular version.  If this involves more than conky
# in the future it should be pulled out into a separate package.

PKG_VERSION=`dpkg -s regolith-i3-wm | grep '^Version:' | awk '{print $2}'`
UPDATE_FLAG_PATH="$HOME/.config/i3-regolith/ftue-flag-$PKG_VERSION"

if [ ! -f $UPDATE_FLAG_PATH ]; then	
	/usr/bin/conky-toggle.sh
	touch $UPDATE_FLAG_PATH
fi
