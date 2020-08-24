## Setup
```bash
git config --global user.name phunc20
git config --global user.email "phunc20@xyz"
```




## <code>alias</code>
```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```
If the command to which you want to establish an alias contains spaces in it, surround them with quotation marks.

For example,
```bash
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
```

[Ref.](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)


## To show all the configurations you've made
```bash
[phunc20@headache-x220tablet rlcomp2020]$ git config --list
alias.st=status
user.email=phunc20@xyz
user.name=phunc20
core.editor=nvim
color.ui=auto
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
remote.origin.url=https://github.com/phunc20/rlcomp2020.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.master.remote=origin
branch.master.merge=refs/heads/master
```


