
-- ror.lua
-- This is the file goes in your ~/.config/awesome/ directory
-- It contains your table of 'run or raise' key bindings for aweror.lua
-- Table entry format: ["key"]={"function", "match string", "optional attribute to match"}
-- The "key" will be bound as "modkey + key".
-- The "function" is what gets run if no matching client windows are found.
-- Usual attributes are "class","instance", or "name". If no attribute is given it defaults to "class".
-- The "match string"  will match substrings.  So "Firefox" will match "blah Firefox blah"  
-- Use xprop to get this info from a window.  WM_CLASS(STRING) gives you "instance", "class".  WM_NAME(STRING) gives you the name of the selected window (usually something like the web page title for browsers, or the file name for emacs).

--module("ror")
--table5={
--   ["e"]={"emacsclient -a emacs -n -c","Emacs"}, 
--   ["w"]={"firefox","Firefox"}, 
--   ["v"]={"firefox -new-window 'http://www.evernote.com/Home.action?login=true#v=l&so=mn'","Evernote", "name"}, 
--   ["g"]={"firefox -new-window 'http://mail.google.com/mail/'","Gmail","name"}, 
--   ["x"]={"xterm","xterm", "instance"}, 
--   ["f"]={"xterm -name mcTerm -e mc -d","mcTerm", "instance"}, 
--   ["s"]={"xterm -name rootTerm -cr red -title rootTerm -e su","rootTerm", "instance"}, 
--   ["t"]={"xterm -name htopTerm -e htop","htopTerm","instance"}, 
--   ["b"]={"xterm -name rtorrentTerm -e rtorrent","rtorrentTerm","instance"}, 
--   ["z"]={"xterm -name mocpTerm -e mocp","mocpTerm", "instance"} 
--}

-- ror.lua
module("ror")
table5={
--   ["f"]={"firefox","Firefox"},
--   ["a"]={"chromium --user-data-dir=/dev/shm/goo", "Chromium" },
--   ["s"]={"xterm -class Screen -e screen -xRRS xterm  ", "Screen" },
   ["v"]={"gvim", "GVIM"},
--   ["e"]={"emacs", "Emacs"}
}

