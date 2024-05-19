# Self-added paths
useful="/home/phunc20/.useful-scripts"
homelocalbin="/home/phunc20/.local/bin"
[ -d "$useful" ] && { grep "$useful" <(echo $PATH) > /dev/null || PATH="$PATH:$useful"; }
[ -d "$homelocalbin" ] && { grep "$homelocalbin" <(echo $PATH) > /dev/null || PATH="$PATH:$homelocalbin"; }
source "$useful/mkcd.sh"
unset useful
unset homelocalbin

# For python virtualenv
export WORKON_HOME="/home/phunc20/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
source "$HOME/.local/bin/virtualenvwrapper.sh"


# some more ls aliases
alias ls="ls --color"
alias la='ls -A'
alias ll='la -trlh'
#alias l='ls -CF'
alias redshit="redshift -P -O ${1:-3600}"
alias mou="sudo mount"
alias umou="sudo umount"
alias ran="ranger"
alias ju="jupyter-notebook"
alias neotruth="/usr/bin/neofetch"
alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/ .*gentoo/ rubb\*sh/'"
#alias poweroff="sudo poweroff"
alias poweroff="sudo shutdown now"
#alias reboot="sudo reboot"
alias reboot="sudo shutdown -r now"
source /usr/share/doc/ranger/examples/bash_automatic_cd.sh
alias ran="ranger-cd"

