#!/bin/bash

# Run this script in display 0 - the monitor
export DISPLAY=:0

# Hide the mouse from the display
unclutter &

# Disable general blanking
xset -dpms
xset s noblank
xset s off

#!/bin/bash
/usr/bin/google-chrome --kiosk --start-fullscreen --window-position=0,0 --window-size=1920,1080 --no-first-run --incognito --no-default-browser-check --disable-translate https://google.com