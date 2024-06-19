## Briefing
If you don't have time reading this long document, just bring one thing with you after finishing reading this file. That is, when you encounter troubles configuring environment
variables, aliases, `source`ing files, and so on,
> Try configuring in the file **`~/.bash_profile`**
That's the trick in Debian 10.


## Investigation
```bash
phunc20@cingular-x61s:~$ echo $TMUX
/tmp//tmux-1000/default,963,0
phunc20@cingular-x61s:/tmp$ ls -Al tmux-1000/default
srwxrwx--- 1 phunc20 phunc20 0 Jan 29 20:18 tmux-1000/default
phunc20@cingular-x61s:/tmp$ cd
phunc20@cingular-x61s:~$ which bash
/usr/bin/bash
phunc20@cingular-x61s:~$ echo $SHELL
/bin/bash
phunc20@cingular-x61s:~$ ll /bin/bash
-rwxr-xr-x 1 root root 1.2M Apr 18  2019 /bin/bash
phunc20@cingular-x61s:~$ ll /usr/bin/bash
-rwxr-xr-x 1 root root 1.2M Apr 18  2019 /usr/bin/bash
```

## Forget about the investigation above
I have found a way to overcome this. It's actually quite straight-forward.

Let's state our problem again. It concerns the `PATH` environment variable under `xfce`
`Debian 10` in Jan. 2021. There are at least two sorts of problems.
01. Terminal emulators, whether it be `xfce4-terminal` (the default, pre-installed terminal
emulator under `xfce`) or `st` or any other that you can installed via `apt`, their `PATH` is not
set via `~/.bash_profile`, `~/.profile` or `~/.bashrc`. Instead, the `PATH` of these terminal
emulators (opened inside `xfce`) is mainly influenced by the file `~/.xsessionrc`. One should
specify `PATH` inside this file.
  - Note that `~/.xsessionrc` has its own rule/grammar. For example, the following
  cannot be valid content of it; if it were so, the login page of `xfce` will get
  stuck, never allowing the user to enter into the desktop manager even if one
  types the username and password correctly.
  ```
  # Self-added paths
  #useful="/home/phunc20/.useful-scripts"
  #homelocalbin="/home/phunc20/.local/bin"
  #[ -d "$useful" ] && { grep "$useful" <(echo $PATH) > /dev/null || PATH="$PATH:$useful"; }
  #[ -d "$homelocalbin" ] && { grep "$homelocalbin" <(echo $PATH) > /dev/null || PATH="$PATH:$homelocalbin"; }
  ```
  - The following is valid content of `~/.xsessionrc`
  ```
  PATH="$PATH:/home/phunc20/.local/bin:/home/phunc20/.useful-scripts"
  ```
02. This seems to be called login shell. There are at least two scenarios one encounters login shell
  01. The virtual consoles (aka `tty1~tty6`)
  02. `tmux` inside `xfce`'s any terminal emulator
  - These share a common solution: Configure `PATH` inside the file `~/.bash_profile`.
  - Note that configuring `PATH` inside `~/.bashrc` **won't work**.
  - Here is an example for setting `PATH` (in `~/.bash_profile`).
  ```
  # Self-added paths
  useful="/home/phunc20/.useful-scripts"
  homelocalbin="/home/phunc20/.local/bin"
  [ -d "$useful" ] && { grep "$useful" <(echo $PATH) > /dev/null || PATH="$PATH:$useful"; }
  [ -d "$homelocalbin" ] && { grep "$homelocalbin" <(echo $PATH) > /dev/null || PATH="$PATH:$homelocalbin"; }
  ```


## Login shell
It seems that **login shells in Debian will not `source ~/.bashrc`**. By contrast,
**`~/.bash_profile`** will be `source`d. Moreover, `alias`es defined inside
`~/.bashrc` won't get to be recognized, either. That is, **put the following
things in `~/.bash_profile` instead of in `~/.bashrc`**
- environment variables
- `alias`es
- `source` command

**Note.** Don't even put these in `~/.profile`. It won't work. Seems that only
`~/.bash_profile` is the single best place to place env var, `alias`es, etc.<br>
Note that putting everything in `.bashrc`
- doesn't mean that once you open a terminal emulator and then you `source ~/.bashrc`,
things won't work.
- instead, it only means that right after you open a terminal emulator, things you
demand inside `~/.bashrc` won't work immediately, at least not after you do `source ~/.bashrc`.
- There is also the possibility of creating a file `~/.bash_aliases` and put all your
aliases inside it. However, on a login shell (i.e. vconsole or `tmux`), aliases done
this way **won't work**.

## Non-login shell
I shall call temporarily shells that are not login shells **non-login shells**. Examples of these
are
- `st` in `xfce`
Counter examples are
- `tmux` opened in `st` in `xfce`
- `tty1` until `tty6`

It seems that non-login shells **do not source either `~/.bashrc` or `~/.bash_profile`**.
Although it does kind of source `~/.xsessionrc`, things like **aliases** cannot be done
via `~/.xsessionrc`.
