#!/bin/bash
# This script will be called after i3 starts. It's purpose is to do things
# that only make sense for the first time the user starts Regolith
# for a particular version.  If this involves more than conky
# in the future it should be pulled out into a separate package.

PKG_VERSION=`dpkg -s i3blocks | grep '^Version:' | awk '{print $2}'`

if [ ! -f ~/.regolith-ftui-flag-$PKG_VERSION ]; then
	touch ~/.regolith-ftui-flag-$PKG_VERSION
	/usr/bin/conky-toggle.sh
fi

