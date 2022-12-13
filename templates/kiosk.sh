#!/bin/bash

# Run this script in display 0 - the monitor
export DISPLAY=:0

# Hide the mouse from the display
unclutter &

#!/bin/bash\n\n\
X_RES=\`xrandr | grep \"*\" | awk -Fx '{ print \$1 }' | sed 's/[^0-9]*//g'\`\n\
Y_RES=\`xrandr | grep \"*\" | awk -Fx '{ print \$2 }' | awk '{ print \$1 }'\`\n\n\
/usr/bin/google-chrome --kiosk --start-fullscreen --window-position=0,0 --window-size=\$X_RES,\$Y_RES --no-first-run --incognito --no-default-browser-check --disable-translate https://google.com