#!/bin/sh

# Session
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=sway
export XDG_CURRENT_DESKTOP=sway

export QT_QPA_PLATFORMTHEME=qt5ct

source /usr/bin/wayland_enablement.sh

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

systemd-cat --identifier=sway sway $@
