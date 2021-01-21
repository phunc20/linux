xmodmap $HOME/.Xmodmap
xcompmgr &

sxhkd &
# In case, ibus is not auto-started upon login
ibus-daemon -drx &
ez_dwmbar &
exec dwm
