#!/bin/sh

# Fix opening links in Electron apps
eval "$(dbus-launch --sh-syntax --exit-with-session)"

# Start ssh-agent
eval "$(ssh-agent -s)"

# Environment Variables
XDG_RUNTIME_DIR=/tmp/user/$(id -u)
export XDG_RUNTIME_DIR
mkdir -p $XDG_RUNTIME_DIR
export PATH="$PATH":"$HOME"/.local/bin
QT_FONT_DPI=96
export QT_FONT_DPI

# Programs
setxkbmap -model pc105 -layout us
xrdb -m "$HOME"/.Xresources
xwallpaper --output DP-0 --center "$HOME"/wp.jpeg --output HDMI-0 --center "$HOME"/wp2.jpg &
xsetroot -cursor-name left_ptr &

#picom --backend glx --config "$HOME"/.config/picom/picom.conf &
"$HOME"/.config/lemonbar/init.sh &

pipewire &

exec /usr/bin/env cwm
