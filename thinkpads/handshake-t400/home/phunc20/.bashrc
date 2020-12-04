#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

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
alias ls='ls --color=auto'
alias la="ls -A"
alias ll="la -trl"
alias grep="grep --color"
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
alias ytdl="youtube-dl -f22 --write-sub"
alias condactivate="conda activate"
alias condeactivate="conda deactivate"


## For python virtualenv
if [ $(whoami) = "phunc20" ]; then
  export WORKON_HOME="$HOME/.virtualenvs"
  export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
  source "$HOME/.local/bin/virtualenvwrapper.sh"
fi

[ $(tty) = "/dev/tty1" ] && startx


vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}


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


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/phunc20/.sdkman"
[[ -s "/home/phunc20/.sdkman/bin/sdkman-init.sh" ]] && source "/home/phunc20/.sdkman/bin/sdkman-init.sh"
