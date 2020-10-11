# /etc/skel/.bash_profile

export EDITOR=nvim
export FCEDIT=nvim

#export PATH="${PATH}:/usr/sbin:$HOME/.local/bin:$HOME/.useful-scripts"
export PATH="${PATH}:$HOME/.local/bin:$HOME/.useful-scripts"

## ibus-unikey not working in browser
export GTK_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=xim

# Device mount points
export kodak="/mnt/usb/kodak"
export apacer="/mnt/usb/apacer"
export red="/mnt/wd/red"
export usbc="/mnt/wd/usbc"

# ranger
RANGER_LOAD_DEFAULT_RC="FALSE"


# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
  . ~/.bashrc
fi


