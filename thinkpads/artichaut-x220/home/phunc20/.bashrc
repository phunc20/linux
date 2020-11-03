#
# ~/.bashrc
#

## Disable ctrl-s and ctrl-q
#stty -ixon 
shopt -s autocd
HISTSIZE= HISTFILESIZE= # Infinite history

mkcd() {
    if [ "$#" -ne 1 ]; then
        echo "Exactly one input arg required."
    else
        mkdir -p "$1"
        cd "$1"
    fi
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Activate vi mode w/ <Esc> key
#set -o vi

alias ls='ls --color=auto'
#alias la='ls --color=auto -a'
alias ll='ls -alh'
alias la='ls -a'
alias mou='sudo mount'
alias umou='sudo umount'
alias ran="ranger"
alias redshit="redshift -P -O 3400"
alias ju="jupyter-notebook"
alias charm="wmname LG3D && /home/phunc20/samsung-SATA/programming/IDEs/pycharm-community-2020.1.4/bin/pycharm.sh"
alias neotruth="/usr/bin/neofetch"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/gentoo/windows7/'"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Gentoo.*/Windows7/; s/Kernel.*/Kernel: rubb\*sh/'"
#alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Arch Linux.*/Windows7/; s/ .*gentoo/ rubb\*sh/'"
alias neofetch="neofetch --ascii_distro Windows7 | sed 's/Arch Linux/Windows7/; s/ .*gentoo/ rubb\*sh/'"

## Prompt
## \W is the last part of \w, cf. below for \w
#PS1='[\u@\h \W]\$ '
## \w is the full path w/ $HOME replaced by ~
#PS1='[\u@\h \w]\$ '
## Colorize (Rainbow here)(idea from LukeSmith)
## [ and ]: red
## \u: orange/yellow
## @: green
## \h: light blue
## \W: purple
PS1='\[\e[31m\][\[\e[m\]\[\e[1;33m\]\u\[\e[m\]\[\e[1;32m\]@\[\e[m\]\[\e[1;34m\]\h\[\e[m\] \[\e[35m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\$ '

## Add $HOME/useful-scripts to $PATH
export PATH="$PATH:$HOME/useful-scripts"
## IDEs like Pycharm, intelliJ IDEA, etc.
#export PATH="$PATH:$HOME/ide/pycharm-community-2020.1.1/bin"


### For ibus
##export GTK_IM_MODULE=ibus
#export GTK_IM_MODULE=xim
#export XMODIFIERS=@im=ibus
##export QT_IM_MODULE=ibus
#export QT_IM_MODULE=xim

## For python virtualenvwrapper
export PATH="$PATH:$HOME/.local/bin"   # Where virtualenvwrapper-related files reside
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export WORKON_HOME=$HOME/.virtualenvs  # Where to put the created envs
source $HOME/.local/bin/virtualenvwrapper.sh

## For bazel (i.e. tensorflow source code build tool)
#export PATH="$PATH:$(go env GOPATH)/bin"

## vim-like bash
#set -o vi

## Transparent xterm window (by transset-df/xcompmgr)
#[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" 0.5 > /dev/null
#[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" > /dev/null
#transset-df --id "$WINDOWID" > /dev/null

## USB key mounted paths
#export apacer="/media/usb/apacer"
#export kingston="/media/usb/kingston"
#export kodak="/media/usb/kodak"
#export transcend="/media/usb/transcend"
#export red="/media/wd/red"
#export usbc="/media/wd/usbc"
#export iphone7="/media/iphone7"


## Proxy (Fsoft)
function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

    if (( $# > 0 )); then
        valid=$(echo $@ | sed -n 's/\([0-9]\{1,3\}.\?\)\{4\}:\([0-9]\+\)/&/p')
        if [[ $valid != $@ ]]; then
            >&2 echo "Invalid address"
            return 1
        fi
        local proxy=$1
        export http_proxy="$proxy" \
               https_proxy=$proxy \
               ftp_proxy=$proxy \
               rsync_proxy=$proxy
        echo "Proxy environment variable set."
        return 0
    fi

    #echo -n "username: "; read username
    #if [[ $username != "" ]]; then
    #    echo -n "password: "
    #    read -es password
    #    local pre="$username:$password@"
    #fi
    local pre=""

    echo -n "server: "; read server
    echo -n "port: "; read port
    local proxy=$pre$server:$port
    export http_proxy="$proxy" \
           https_proxy=$proxy \
           ftp_proxy=$proxy \
           rsync_proxy=$proxy \
           HTTP_PROXY=$proxy \
           HTTPS_PROXY=$proxy \
           FTP_PROXY=$proxy \
           RSYNC_PROXY=$proxy
}

function proxy_off(){
    unset http_proxy https_proxy ftp_proxy rsync_proxy \
          HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY
    echo -e "Proxy environment variable removed."
}

[ "$(tty)" = "/dev/tty1" ] && startx


