#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --output HDMI-A-1 --left-of HDMI-A-0
xrandr --output HDMI-A-0 --primary
xset dpms 600 0 0

~/.fehbg &
numlockx &
exec i3
