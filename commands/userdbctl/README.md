## List system users/groups
- list users: **`userdbctl user`**
- list groups: **`userdbctl group`**

The scenario that I found this command:<br>
I wanted to install and use `postgresql` and the Arch wiki says that after the `pacman` installation, it will create a
system user named `postgres`. However, when I `ls /home`, I didn't see anything. Therefore, I doubted that it was the
same kind of user concept or not; it was then that I came to know this command of `userdbctl` (by trying to see what kind
of command a autocompletion of `user` on the shell will give).

```
~ ❯❯❯ userdbctl user
NAME                   DISPOSITION   UID   GID REALNAME                     HOME              SHELL
root                   intrinsic       0     0 -                            /root             /bin/bash
nobody                 intrinsic   65534 65534 Nobody                       /                 /usr/bin/nologin
bin                    system          1     1 -                            /                 /usr/bin/nologin
daemon                 system          2     2 -                            /                 /usr/bin/nologin
mail                   system          8    12 -                            /var/spool/mail   /usr/bin/nologin
ftp                    system         14    11 -                            /srv/ftp          /usr/bin/nologin
http                   system         33    33 -                            /srv/http         /usr/bin/nologin
uuidd                  system         68    68 -                            /                 /usr/bin/nologin
dbus                   system         81    81 System Message Bus           /                 /usr/bin/nologin
polkitd                system        102   102 PolicyKit daemon             /                 /usr/bin/nologin
rtkit                  system        133   133 RealtimeKit                  /proc             /usr/bin/nologin
postgres               system        973   973 PostgreSQL user              /var/lib/postgres /bin/bash
geoclue                system        974   974 Geoinformation service       /var/lib/geoclue  /usr/bin/nologin
colord                 system        975   975 Color management daemon      /var/lib/colord   /usr/bin/nologin
avahi                  system        976   976 Avahi mDNS/DNS-SD daemon     /                 /usr/bin/nologin
git                    system        977   977 git daemon user              /                 /usr/bin/git-shell
systemd-coredump       system        978   978 systemd Core Dumper          /                 /usr/bin/nologin
systemd-timesync       system        979   979 systemd Time Synchronization /                 /usr/bin/nologin
systemd-resolve        system        980   980 systemd Resolver             /                 /usr/bin/nologin
systemd-network        system        981   981 systemd Network Management   /                 /usr/bin/nologin
systemd-journal-remote system        982   982 systemd Journal Remote       /                 /usr/bin/nologin
phunc20                regular      1000   998 -                            /home/phunc20     /bin/bash
~ ❯❯❯ ls /home/
lost+found  phunc20
~ ❯❯❯
```

