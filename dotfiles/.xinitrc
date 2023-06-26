dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export QT_SCALE_FACTOR=1.4


#this sets it so the screen never turns off, useful for desktop/docked setups
#xset s off
#xset -dpms
#xset s noblank

udiskie -NAt &
exec i3
