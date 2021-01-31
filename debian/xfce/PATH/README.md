## `PATH` under `xfce` of Debian 10
Around the end of Jan. 2021, I installed Debian 10 on my Thinkpad X61s
and find it hard to adjust the environment variable `PATH`.

I first noticed this when I installed `dmenu` (and still used `xfce`, not
yet switching to `dwm`). Usually, I used this `~/.useful-scripts/`
directory to most of my self-written shell scripts, and I put it
under my `PATH` environment variable.

From my previous experience, if one uses `bash` then the above setting
can be easily accomplished by putting in `~/.bash_profile` (or in
`~/.bashrc`, `~/.profile`)
```
#useful="/home/phunc20/.useful-scripts"
#if [ -d "$useful" ] ; then
#    grep "$useful" <(echo $PATH) || PATH="$PATH:$useful"
#fi
```

But none of these worked for `xfce` Debian 10.
And it turned out that, for `xfce` Debian 10, the file one should really
edit is **`~/.xsessionrc`**
```
PATH="$PATH:/home/phunc20/.local/bin:/home/phunc20/.useful-scripts"
```
Once this is done, both `dmenu` and any terminal emulator you open from
`xfce` will have `/home/phunc20/.useful-scripts` in `PATH`.

**Rmk.** One exception: When you open any terminal emulator, `PATH` indeed
works once we done with `~/.xsessionrc`. However, if you plan to run `tmux`,
`PATH` will once again go back to the default. (cf. `../tmux/README.md` for
more on the fix for this.)


## Deeper Understanding
- `man bash` search for `/^INVOCATION`. The following paragraph seems to be the most relevant.
  ```
  INVOCATION
         When bash is invoked as an interactive login shell, or as a non-interactive  shell
         with  the  --login  option,  it  first  reads  and executes commands from the file
         /etc/profile, if that  file  exists.   After  reading  that  file,  it  looks  for
         ~/.bash_profile,  ~/.bash_login, and ~/.profile, in that order, and reads and exe‐
         cutes commands from the first one that exists and is  readable.   The  --noprofile
         option may be used when the shell is started to inhibit this behavior.
  ```
  - As far as I can guess, it means that amongst the three files `~/.bash_profile`,
    `~/.bash_login` and `~/.profile`, bash will find whichever exists, the first in that
    order being found will be executed and only the first.
  - This might explain why I see that my `~/.bash_profile` is applied while `~/.profile` not.
  - One can try copying the content of `~/.bash_profile` to `~/.profile` and then delete the file
    `~/.bash_profile` to see if these comments are correct.
- the file `/etc/profile`
