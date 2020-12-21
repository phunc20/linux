
## Enable colors and change prompt
autoload -U colors && colors


## History in cache directory
#HISTSIZE=10_000
#SAVEHIST=10_000
#HISTFILE="$HOME/.cache/zsh/history"


alias pacman="sudo pacman"
alias vim="sudo nvim"
alias la="ls -a"
alias ll="ls -ltra"
alias mou="sudo mount"
alias umou="sudo umount"
source /usr/share/doc/ranger/examples/shell_automatic_cd.sh
alias ran="ranger_cd"
alias redshit="redshift -P -O ${1:-3600}"
alias neotruth="/usr/bin/neofetch"
alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Parabola.*/Windows7 i686/'"

source $HOME/.useful-scripts/mkcd.sh

#setfont ter-118b
## Simply `setfont`ing is not good, because on terminals which are not vconsole, not supposed to do so
[ $(tty | grep tty) ] && setfont ter-118b

## For python virtualenv
export WORKON_HOME="$HOME/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
source "$HOME/.local/bin/virtualenvwrapper.sh"

