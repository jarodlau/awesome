#!/bin/bash
# gdm的session配置在/usr/share/xsessions
# 编辑awesome.desktop使他执行一些前提工作
# 比如打开mpd,网络显示,ibus...

#xcompmgr &
# music daemon
mpd &
# random mpc play
mpc random on &
#fcitx -d &
ibus-daemon -d -x -r -n awesome
#xmodmap $HOME/.Xmodmap
urxvtd -q -o -f &
nm-applet &
#xscreensaver &
#kdeinit4
exec /usr/bin/awesome
