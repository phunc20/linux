After finishing installing <code>manjaro</code> and <code>gvim</code>, as of <b>2020/09/19</b>, when one tries to execute the command <code><b>vim</b></code> on a terminal, one'd get
```bash
[phunc20@denjiro-x220 ~]$ vim
vim: error while loading shared libraries: libperl.so: cannot
 open shared object file: No such file or directory
```

A solution I found is just to update and upgrade the system:
```bash
sudo pacman -Syu
```









