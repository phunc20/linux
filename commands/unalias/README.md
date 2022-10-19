Aliases are usually commands that you
define in your `~/.bashrc`.
Normally, they serve as quick means
to more complicated commands
possibly with long options.

Examples like:
```
alias ls='ls --color=auto'
alias la="ls -A"
alias ll="la -trlh"
alias redshit="redshift -P -O ${1:-3600}"
alias mou="sudo mount -o uid=$(id -u) -o gid=$(id -g)"
alias umou="sudo umount"
```

If you realized that you don't want an
alias any more, you can `unalias` it, e.g.
```bash
$ unalias ll
```

This will make the alias go away.
