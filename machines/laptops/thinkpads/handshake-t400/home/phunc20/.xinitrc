#!/bin/bash
## For fcitx to work
#eval "$(dbus-launch --sh-syntax --exit-with-session)"

### Screensaver and LockScreen
#xscreensaver &
#
## Wallpaper
#~/.fehbg &
[ -f $HOME/pictures/wallpapers/current.* ] && xwallpaper --maximize $HOME/pictures/wallpapers/current.*
#sleep 0.5
xcompmgr &

sxhkd &
xmodmap $HOME/.Xmodmap

## sxiv (background color, etc.)
xrdb ~/.Xresources &

#dunst &
dunst -font "Liberation Mono 14" &

### dwm status bar
#dwmbar &


## ibus [實驗證明: chỉ cần hai dòng cuối là đủ.]
##export GTK_IM_MODULE=ibus
##export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
##############################################################
## Decision: on Gentoo x1, use fcitx instead of ibus        ##
## No, don't have time: unmask ibus-unikey and stay in ibus ##
##############################################################
#export XMODIFIERS="@im=fcitx"
#export QT_IM_MODULE=fcitx
#export GTK_IM_MODULE=fcitx
#eval "$(dbus-launch --sh-syntax --exit-with-session)"

### trackpt
### (system.d unit equivalent not working)
##sudo trackpt-config ;


### win key, alt L
##xmodmap -e "keycode 64 = Super_L"
##xmodmap -e "remove mod1 = Super_L"

### Disable touchpad
##xinput disable "SynPS/2 Synaptics TouchPad"
### trackpoint x200 (Failed)
##xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
##xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
##xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
##xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
##xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" 140
##xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Speed" 70
#sudo trackpt-config.sh
#
#
### USB key mounted paths
##export apacer="/media/usb/apacer"
##export transcend="/media/usb/transcend"
##export kingston="/media/usb/kingston"
#
### gnome-keyring daemon (for Skype)
##eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
##export SSH_AUTH_SOCK
#
#### X11 key swap: Alt_Right and Ctrl_Right
##setxkbmap -layout...
##xmodmap ~/.swap-AltR-CtrlR
#xmodmap ~/.xmodmap-zin
##if [ -s ~/.swap-AltR-CtrlR ]; then
##    xmodmap ~/.swap-AltR-CtrlR
##fi


## Temporary dwm bar
ez_dwmbar &

## Disable touchpad
xinput disable "SynPS/2 Synaptics TouchPad"

exec dwm
