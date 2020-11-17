# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


export EDITOR=nvim
export FCEDIT=nvim

# Put your fun stuff here.
alias la="ls -A"
alias ll="la -trl"
alias vim="nvim"
#alias sudo="sudo "
alias redshit="redshift -P -O ${1:-3600}"
alias mou="sudo mount"
alias umou="sudo umount"
#alias ran="ranger"
source /usr/share/doc/ranger/examples/shell_automatic_cd.sh
alias ran="ranger_cd"
alias ju="jupyter-notebook"
alias neotruth="/usr/bin/neofetch"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/gentoo/windows7/'"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/Kernel.*/Kernel: rubb\*sh/'"
alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/ .*gentoo/ rubb\*sh/'"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias pacman="sudo pacman"
alias condact="conda activate"
alias condeact="conda deactivate"


## For python virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
#export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python3"
export VIRTUALENVWRAPPER_PYTHON="$(which python3.7)"
source "$HOME/.local/bin/virtualenvwrapper.sh"

# For pycharm
#export PYCHARM_JDK=`java-config -O`
#export PYCHARM_JDK=$JAVA_HOME

### ibus-unikey not working in browser
export GTK_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=xim


shopt -s autocd
HISTSIZE= HISTFILESIZE=

export PATH="${PATH}:$HOME/.local/bin:$HOME/.useful-scripts"

## source a file to import some self-defined functions, e.g. mkcd
source /home/phunc20/.useful-scripts/mkcd.sh
source /usr/share/doc/ranger/examples/shell_automatic_cd.sh

[ $(tty) = "/dev/tty1" ] && startx



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

##THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/leif/.sdkman"
#[[ -s "/home/leif/.sdkman/bin/sdkman-init.sh" ]] && source "/home/leif/.sdkman/bin/sdkman-init.sh"
