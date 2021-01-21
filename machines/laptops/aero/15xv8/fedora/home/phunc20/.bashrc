# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

shopt -s autocd

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls="ls --color"
alias la="ls -A"
alias ll="la -trlh"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias vim="vimx"
alias mou="sudo mount"
alias umou="sudo umount"
alias redshit="redshift -P -O ${1:-3600}"
source /usr/share/doc/ranger/examples/shell_automatic_cd.sh
alias ran="ranger_cd"
alias ju="jupyter-notebook"
alias lab="jupyter-lab"
alias smi="watch -n 0.5 nvidia-smi"
alias condact="conda activate"
alias condeact="conda deactivate"

source /home/phunc20/.useful-scripts/mkcd.sh

# remap some keys: First turn off the keyboard daemon from gnome
pkill gsd-keyboard && xmodmap /home/phunc20/.Xmodmap

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


# For python virtualenv
export WORKON_HOME="/home/phunc20/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
source "/home/phunc20/.local/bin/virtualenvwrapper.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/phunc20/.config/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/phunc20/.config/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/phunc20/.config/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/phunc20/.config/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

