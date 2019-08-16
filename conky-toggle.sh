#!/bin/bash
# If conky is running, kill it.  Otherwise start it.

if pgrep -x "conky" > /dev/null
then
    killall conky
else
    /usr/bin/conky -q -c /etc/xdg/conky/config &
fi
