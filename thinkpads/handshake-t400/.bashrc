#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='[\W] >>> '
#PS1="[\w | sed 's/c/z/'] >>> "
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
#BLUE="\[$(tput setaf 27)\]"
BLUE="\[$(tput setaf 75)\]"
#BLUE="\[$(tput setaf 39)\]"
ORANGE="\[$(tput setaf 214)\]"
RESET="\[$(tput sgr0)\]"
## Search for a better arrow symbol
#"0xe20x880xb40x0a"  # Doesn't work
#"つ"
#"ゥ"
#"ᗆ"
#"⧽"
#"❭"
arrow="❯"
#PS1="${GREEN}my prompt${RESET}> "
#PS1="${BLUE}\W${RESET} ${RED}>${RESET}${ORANGE}>${RESET}${GREEN}>${RESET} "
PROMPT_DIRTRIM=3
#PS1="${BLUE}\W${RESET} ${RED}${arrow}${RESET}${ORANGE}${arrow}${RESET}${GREEN}${arrow}${RESET} "
if [ $(whoami) = "root" ]; then
  PS1="${RED}\w${RESET} ${RED}${arrow}${RESET}${ORANGE}${arrow}${RESET}${GREEN}${arrow}${RESET} "
else
  PS1="${BLUE}\w${RESET} ${RED}${arrow}${RESET}${ORANGE}${arrow}${RESET}${GREEN}${arrow}${RESET} "
fi

# Put your fun stuff here.
alias ll="ls -trla"
alias la="ls -A"
alias vim="nvim"
alias redshit="redshift -P -O ${1:-3600}"
alias mou="sudo mount"
alias umou="sudo umount"
#alias ran="ranger"
source /usr/share/doc/ranger/examples/shell_automatic_cd.sh
alias ran="ranger_cd"
source /home/phunc20/.useful-scripts/mkcd.sh
alias ju="jupyter-notebook"
alias neotruth="/usr/bin/neofetch"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/gentoo/windows7/'"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/Kernel.*/Kernel: rubb\*sh/'"
alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/ .*gentoo/ rubb\*sh/'"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias pacman="sudo pacman"


## For python virtualenv
if [ $(whoami) = "phunc20" ]; then
  export WORKON_HOME="$HOME/.virtualenvs"
  export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
  source "$HOME/.local/bin/virtualenvwrapper.sh"
fi

[ $(tty) = "/dev/tty1" ] && startx
