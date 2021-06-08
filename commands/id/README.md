```bash
~/git-repos/phunc20/mti_technology ❯❯❯ id -a
uid=1000(phunc20) gid=998(wheel) groups=998(wheel),970(brlapi),971(docker),991(lp)
~/git-repos/phunc20/mti_technology ❯❯❯ id -u
1000
~/git-repos/phunc20/mti_technology ❯❯❯ id -g
998
```

## Usecase
In `~/.bashrc`, set `alias mou="sudo mount -o uid=$(id -u) -o gid=$(id -g)"` to mount devices so that after mounting the directory mounted has access right to the user, not just to root.
