#!/bin/bash

# Run this script in display 0 - the monitor
export DISPLAY=:0

# Hide the mouse from the display
unclutter &

# Disable screensaver
gsettings set org.gnome.desktop.screensaver logout-enabled false
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false
gsettings set org.gnome.desktop.screensaver show-notifications false
gsettings set org.gnome.desktop.screensaver status-message-enabled false
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
gsettings set org.gnome.settings-daemon.plugins.screensaver-proxy active false

# Disable general blanking
xset -dpms
xset s noblank
xset s off

#!/bin/bash
/usr/bin/google-chrome --kiosk --start-fullscreen --password-store=basic --window-position=0,0 --window-size=1920,1080 --no-first-run --incognito --no-default-browser-check --disable-translate https://www.fotocadeau.nl