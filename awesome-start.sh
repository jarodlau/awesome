#! /bin/bash

mpd &
mpc random on &
ibus-daemon -d -x -r -n awesome
#xmodmap $HOME/.Xmodmap
urxvtd -q -o -f &
#xscreensaver &
#kdeinit4
exec /usr/bin/awesome
