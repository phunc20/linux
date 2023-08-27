## `dnf list`
`dnf list` lists all existing packages according two categories:
01. Installed
02. Available (i.e. not yet installed)


### List all packages (installed or not)
Both
- `dnf list`
- `dnf list all`
will do.

Proof:
```bash
[phunc20@localhost ~]$ diff <(dnf list all) <(dnf list)
1c1
< Last metadata expiration check: 0:26:52 ago on Fri 15 Jan 2021 10:55:59 AM +07.
---
> Last metadata expiration check: 0:26:53 ago on Fri 15 Jan 2021 10:55:59 AM +07.
[phunc20@localhost ~]$
```

### Find certain packages
- `dnf list <name>` will find all packages matching `<name>`, i.e. both **installed** and **available**.
- `dnf list installed <regex>` will only find already installed packages matching `<name>`
    - Equiv. to `rpm -qa | grep <regex>`

```bash
[phunc20@localhost ~]$ dnf list *pv
Last metadata expiration check: 0:20:24 ago on Fri 15 Jan 2021 10:55:59 AM +07.
Installed Packages
mpv.x86_64                                                0.33.0-1.fc33                                        @rpmfusion-free-updates
Available Packages
gnome-mpv.x86_64                                          0.16-6.fc33                                          rpmfusion-free-updates
pv.x86_64                                                 1.6.6-9.fc33                                         fedora
vdr-mpv.x86_64                                            0.2.2-1.fc33                                         rpmfusion-free-updates
xt7-player-mpv.noarch                                     0.31.3143-2.fc33                                     rpmfusion-free
[phunc20@localhost ~]$ dnf list installed *pv
Installed Packages
mpv.x86_64                                            0.33.0-1.fc33                                            @rpmfusion-free-updates
[phunc20@localhost ~]$
```


### Not complete regex
`dnf` does not use the complete regex like `grep` does; instead, its glob patterns are more like those used in command line.
For example, `+` does not exist, and `?` doesn't mean 0 or 1 occurence for the character before. However,
- `?` does mean sth: `?` matches any single character
- `*` matches any character(s) (probably except for newline character)

```bash
[phunc20@localhost ~]$ dnf list [a-z]pv
Last metadata expiration check: 0:20:05 ago on Fri 15 Jan 2021 10:55:59 AM +07.
Installed Packages
mpv.x86_64                                            0.33.0-1.fc33                                            @rpmfusion-free-updates
[phunc20@localhost ~]$ dnf list [a-z]?pv
Last metadata expiration check: 0:20:15 ago on Fri 15 Jan 2021 10:55:59 AM +07.
Error: No matching Packages to list
[phunc20@localhost ~]$
```
