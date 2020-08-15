### File Created btw Two Dates
```
find programming/ -newermt "2020-07-10" ! -newermt "2020-07-27" -iname "*.py"
```


### Find all hidden files in <code>$HOME</code> (and eventually copy them)
- <code>find ~ -maxdepth 1 -type f -iname ".\*"</code>
- <code>find ~ -maxdepth 1 -type f -iname ".\*" -exec cp {} . \;</code>

For example,
```
[phunc20@artichaut-x220 corbeille]$ find ~ -maxdepth 1 -type f -iname ".*"
/home/phunc20/.tmux.conf
/home/phunc20/.wget-hsts
/home/phunc20/.vimrc
/home/phunc20/.fehbg
/home/phunc20/.lesshst
/home/phunc20/.octave_hist
/home/phunc20/.scala_history
/home/phunc20/.profile
/home/phunc20/.gitconfig
/home/phunc20/.viminfo
/home/phunc20/.bashrc
/home/phunc20/.xinitrc
/home/phunc20/.gitignore
/home/phunc20/.Xauthority
/home/phunc20/.python_history
/home/phunc20/.sc-iminfo
/home/phunc20/.Xmodmap
/home/phunc20/.labelImgSettings.pkl
/home/phunc20/.sc_history
/home/phunc20/.xprofile
/home/phunc20/.bash_logout
/home/phunc20/.Xdefaults
/home/phunc20/.Xresources
/home/phunc20/.bash_history
/home/phunc20/.xscreensaver
/home/phunc20/.rnd
```
