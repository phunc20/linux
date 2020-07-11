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


# Put your fun stuff here.
alias ll="ls -AlF"
alias la="ls -A"
alias vim="nvim"
alias sudo="sudo "
alias redshit="redshift -P -O ${1:-3600}"
alias mou="sudo mount"
alias umou="sudo umount"
alias ran="ranger"
alias ju="jupyter-notebook"
alias neotruth="/usr/bin/neofetch"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/gentoo/windows7/'"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/Kernel.*/Kernel: rubb\*sh/'"
alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/ .*gentoo/ rubb\*sh/'"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"


# For python virtualenv
export WORKON_HOME="$HOME/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python3"
source "$HOME/.local/bin/virtualenvwrapper.sh"

# For pycharm
#export PYCHARM_JDK=`java-config -O`
export PYCHARM_JDK=$JAVA_HOME

shopt -s autocd
HISTSIZE= HISTFILESIZE=


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/leif/.sdkman"
[[ -s "/home/leif/.sdkman/bin/sdkman-init.sh" ]] && source "/home/leif/.sdkman/bin/sdkman-init.sh"
