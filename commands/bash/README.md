## Prompt Strings
```bash
[phunc20@fedora bash]$ echo $PS1
[\u@\h \W]\$
[phunc20@fedora bash]$ echo $PS2
>
[phunc20@fedora bash]$ echo $PS3

[phunc20@fedora bash]$ echo $PS4
+
[phunc20@fedora bash]$ 
```

- `PS1` is displayed when Bash is ready to read a command
  - The default `PS1` is `[\u@\h \W]\$`, where
    - `\u` displays the current user's username, e.g. `root`, `phunc20`, etc.
    - `\h` displays the hostname
    - `\W` prints the base of the current working directory
    - `\$` prints either `#` when the UID of the current user is `0`, i.e. the root user, or `$` when the user is a normal user
- `PS2` is displayed when Bash nedds more input to complete a command

There are more such code to display many other things like
```bash
[phunc20@fedora ~]$ echo "\\H"
\H
[phunc20@fedora ~]$ oldps1="$PS1"
[phunc20@fedora ~]$ echo $oldps1
[\u@\h \W]\$
[phunc20@fedora ~]$ export PS1="[\\u@\\H \\W \\@]\\$"
[phunc20@fedora ~ 07:04 PM]$export PS1="[\\u@\\H \\W \\@]\\$ "
[phunc20@fedora ~ 07:04 PM]$ whoami
phunc20
[phunc20@fedora ~ 07:05 PM]$
```

**Note.**<br>
- One cannot `echo` these code
- `\H` displays the FQDN (i.e. Fully Qualified Domain Name)
- `\@` displays current time in 12-hour am/pm format


Table of Colors:
--------------
Color |	Code |
--------------
Black | 0;30 |
Blue	0;34
Green	0;32
Cyan	0;36
Red	0;31
Purple	0;35
Brown	0;33
Blue	0;34
Green	0;32
Cyan	0;36
Red	0;31
Purple	0;35
Brown	0;33












