root@-s-1vcpu-1gb-sgp1-01:~# tmux a
open terminal failed: missing or unsuitable terminal: alacritty
root@-s-1vcpu-1gb-sgp1-01:~# ls
corbeille  todo
root@-s-1vcpu-1gb-sgp1-01:~# tmux a -t 7
open terminal failed: missing or unsuitable terminal: alacritty
root@-s-1vcpu-1gb-sgp1-01:~# echo $TERM
alacritty
root@-s-1vcpu-1gb-sgp1-01:~# unset TERM
root@-s-1vcpu-1gb-sgp1-01:~# echo $TERM

root@-s-1vcpu-1gb-sgp1-01:~# tmux a -t 7
open terminal failed: missing or unsuitable terminal: unknown
root@-s-1vcpu-1gb-sgp1-01:~# tmux
open terminal failed: missing or unsuitable terminal: unknown
root@-s-1vcpu-1gb-sgp1-01:~# export TERM=xterm-256color
root@-s-1vcpu-1gb-sgp1-01:~# tmux a
[detached (from session 7)]
