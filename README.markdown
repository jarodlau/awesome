My Arch Awesome Config
======
Clean
--
![Imgur](http://i.imgur.com/TDDcP)
[Full Version](http://imgur.com/TDDcP)
Dirty
--
![Imgur](http://i.imgur.com/vd5a1)
[Full Version](http://imgur.com/vd5a1)

编辑 /usr/share/xsessions/Awesome.desktop 
	[Desktop Entry]
	Encoding=UTF-8
	Name=Awesome
	Comment=Awesome window manager
	Exec=/home/jarodlau/.config/awesome/awesome-start.sh
	Icon=
	Type=Application

然后在~/.config/awesome/中建立一个awesome-start.sh文件,并且chmod 755 awesome-start.sh
如下

 #! /bin/bash

 mpd &
 mpc random on &
 ibus-daemon -d -x -r -n awesome
 #xmodmap $HOME/.Xmodmap
 urxvtd -q -o -f &
 #xscreensaver &
 #kdeinit4
 exec /usr/bin/awesome

这样就解决了ibus启动的问题

Thu 06 Oct 2011 03:56:41 AM CST
======
把ssh tunnel的自启动脚本从rc.lua拿出来
放在 .alias中

安装 cairo-ubuntu-xcb 在awesome中使用ubuntu的lcd显示补丁.

Fri 07 Oct 2011 08:52:53 AM CST
======
修改rc.lua把启动程序放进来,把/usr/share/xsessions/Awesome.desktop恢复原样

程序都是启动一次的
Sun 16 Oct 2011 06:08:28 PM CST
archlinux-xdg-menu这么个软件包，遂装了。原来主要是两个 Perl 脚本。其一生成各种格式的菜单配置，其二根据配置文件为指定的窗口管理器生成菜单配置文件。虽然看示例配置文件似乎不支持 Awesome，但xdg_menu --help一看却是支持 Awesome 的。

	xdg_menu --format awesome > ~/.config/awesome/menu.lua


然后改下rc.lua，把这个大菜单加上就可以了：

	require("menu")

	mymainmenu = awful.menu({ items = { { "Awesome", myawesomemenu, beautiful.awesome_icon },
          -- ...
          { "应用程序 (&A)", xdgmenu },
          -- ...

Mon 17 Oct 2011 12:27:11 PM CST
======
关闭屏幕保护,30分钟无操作就关闭显示器
必须放在 autorun 中,不能使用run_once

