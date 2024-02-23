```bash
$ su - root
```
is the correct way to change into root, not the simpler `$ su`.


```bash
# usermod -aG sudo phunc20
```
i.e. add your user, here `phunc20`, to the sudoers group


- Not included in fresh install: `tmux, ssh, rsync, git, bat`
