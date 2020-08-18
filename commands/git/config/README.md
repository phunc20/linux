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
