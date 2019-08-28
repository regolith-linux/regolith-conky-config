#!/bin/bash
# This script will be called after i3 starts. It's purpose is to do things
# that only make sense for the first time the user starts Regolith.
# If this involves more than conky
# in the future it should be pulled out into a separate package.

UPDATE_FLAG_DIR="$HOME/.config/regolith/flags"
UPDATE_FLAG_PATH="$UPDATE_FLAG_DIR/show-shortcuts"

if [ ! -f $UPDATE_FLAG_PATH ]; then	
	/usr/bin/conky-toggle

	mkdir -p $UPDATE_FLAG_DIR
	touch $UPDATE_FLAG_PATH
fi
