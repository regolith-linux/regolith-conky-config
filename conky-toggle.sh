#!/bin/bash

# Check if gedit is running
# -x flag only match processes whose name (or command line if -f is
# specified) exactly match the pattern. 

if pgrep -x "conky" > /dev/null
then
    killall conky
else
    /usr/bin/conky -q -c /etc/xdg/conky/config &
fi
