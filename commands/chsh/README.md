## `chsh` is used to change the default login shell
For example, most Linux machines default to bash, you can change to `zsh` as follows.
- `chsh -l` to list the installed/available shells
- `chsh -s <path>` to change
```bash
[phunc20@tako-x60 linux]$ chsh -l
/bin/sh
/bin/bash
/usr/bin/git-shell
/bin/zsh
/usr/bin/zsh
[phunc20@tako-x60 linux]$ chsh -s /bin/zsh
Changing shell for phunc20.
Password:
Shell changed.
[phunc20@tako-x60 linux]$
```

