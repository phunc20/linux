#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='la -trlh'
alias pacman='sudo pacman'
alias vim='nvim'
alias grep='grep --color'

[ $(tty | grep tty) ] && setfont ter-120b
#[ $(tty | grep tty) ] | xmodmap /home/phunc20/.Xmodmap

add_path="/home/phunc20/.local/bin"
#grep "$add_path" <(echo $PATH) || export PATH="$PATH:$add_path"
grep "$add_path" <(echo $PATH) &>/dev/null || export PATH="$PATH:$add_path"
add_path="/home/phunc20/.useful-scripts"
#grep "$add_path" <(echo $PATH) || export PATH="$PATH:$add_path"
grep "$add_path" <(echo $PATH) &>/dev/null || export PATH="$PATH:$add_path"
PS1='[\u@\h \W]\$ '
