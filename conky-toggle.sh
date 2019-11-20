#!/bin/bash
# If conky is running, kill it.  Otherwise start it.

CONKY_PID=$(ps aux | grep "[/]usr/bin/conky -q -c /etc/regolith/conky/config" | awk '{print $2}')

if [ -z "$CONKY_PID" ]
then
    /usr/bin/conky -q -c /etc/regolith/conky/config &
else
    kill $CONKY_PID
fi
