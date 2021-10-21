The command `env` can be used to print out the environment variables.

```bash
~/.../linux/commands/env ❯❯❯ which env
/usr/bin/env
~/.../linux/commands/env ❯❯❯ env
SHELL=/bin/bash
WINDOWID=23068678
usbc=/mnt/wd/usbc
TERM_PROGRAM_VERSION=3.2a
_CE_M=
TMUX=/tmp/tmux-1000/default,846,0
SBT_HOME=/home/phunc20/.sdkman/candidates/sbt/current
JAVA_HOME=/home/phunc20/.sdkman/candidates/java/current
SDKMAN_CANDIDATES_DIR=/home/phunc20/.sdkman/candidates
XMODIFIERS=@im=ibus
EDITOR=nvim
XDG_SEAT=seat0
PWD=/home/phunc20/git-repos/phunc20/linux/commands/env
LOGNAME=phunc20
XDG_SESSION_TYPE=tty
...
```


## Some Tricks
01. When you call an environment variable whose existence you are not sure of, and that in case of inexistence you would
    like something else to replace it instead of letting it empty. Syntax: `${VAR1:-VAR2}`, e.g.
    ```bash
    # In my Fedora, there does not exist XDG_DATA_HOME
    [phunc20@fedora linux]$ echo "${XDG_DATA_HOME} is where I would like to put my .vimrc"
     is where I would like to put my .vimrc
    [phunc20@fedora linux]$ echo "${XDG_DATA_HOME:-$HOME} is where I would like to put my .vimrc"
    /home/phunc20 is where I would like to put my .vimrc
    [phunc20@fedora linux]$ echo "${XDG_DATA_HOME:-AnyStringWillDo} is where I would like to put my .vimrc"
    AnyStringWillDo is where I would like to put my .vimrc
    [phunc20@fedora linux]$
    ```

