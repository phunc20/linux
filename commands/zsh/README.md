### `chsh` -- change shell
```bash
# To list all installed shells
chsh -l
# To set one of them as default
chsh -s <full-path-to-shell>
# e.g.
chsh -s /bin/zsh
```

### `PROMPT`
The default `PROMPT` of `zsh` on Parabola is `%m%#<space>`.
```zsh
tako-x60% echo $PROMPT
%m%#
```

- `%m` the hostname
- `%#` is the `%` sign for prompt

To make `zsh` display current path, one has two choices

- `%~`: with `$HOME` shortened to `~`
  - `%3~`: display the `3` bottom most directories
- `%/`: absolute path
  - `%2~`: display the `2` bottom most directories

```zsh
tako-x60% cd ~/git-repos/phunc20/linux/commands/zsh
tako-x60% PROMPT="%~%# "
~/git-repos/phunc20/linux/commands/zsh% PROMPT="%/%# "
/home/phunc20/git-repos/phunc20/linux/commands/zsh% PROMPT="%2/%# "
commands/zsh% PROMPT="%3~%# "
commands/zsh% PROMPT="%7~%# "
~/git-repos/phunc20/linux/commands/zsh% PROMPT="%7/%# "
/home/phunc20/git-repos/phunc20/linux/commands/zsh%
```





