#
# ~/.bashrc
#

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias pacman="sudo pacman"
alias vim="nvim"
alias la="ls -a"
alias ll="ls -ltra"
alias mou="sudo mount"
alias umou="sudo umount"
source /usr/share/doc/ranger/examples/shell_automatic_cd.sh
alias ran="ranger_cd"
alias redshit="redshift -P -O ${1:-3600}"
alias neotruth="/usr/bin/neofetch"
alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Parabola.*/Windows7 i686/'"

source /home/phunc20/.useful-scripts/mkcd.sh

#setfont ter-118b
## Simply `setfont`ing is not good, because on terminals which are not vconsole, not supposed to do so
[ $(tty | grep tty) ] && setfont ter-118b

## start X if it concerns vconsole tty1
#[ $(tty) = "/dev/tty1" ] && startx

## For python virtualenv
if [ $(whoami) = "phunc20" ]; then
  export WORKON_HOME="/home/phunc20/.virtualenvs"
  export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
  source "/home/phunc20/.local/bin/virtualenvwrapper.sh"
fi

## ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


