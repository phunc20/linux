# /etc/skel/.bash_profile

export EDITOR=nvim
export FCEDIT=nvim

export PATH="${PATH}:/usr/sbin:$HOME/.local/bin:$HOME/.useful-scripts"

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


