## `newgrp` Updates Immediately
That is, no need to log out and then log in.

For example, after installing docker, we usually have to add our users
to the `docker` group to allow them to use the `docker` command w/o needing
to prepend the command by `sudo`:
```bash
~/git-repos/codewithsk/JuliaCon2021$ grep docker /etc/group
docker:x:998:
~/git-repos/codewithsk/JuliaCon2021$ echo $USER
phunc20
~/git-repos/codewithsk/JuliaCon2021$ sudo usermod -aG docker $USER
~/git-repos/codewithsk/JuliaCon2021$ groups
phunc20 cdrom floppy sudo audio dip video plugdev netdev bluetooth scanner lpadmin wheel
~/git-repos/codewithsk/JuliaCon2021$ newgrp docker
~/git-repos/codewithsk/JuliaCon2021$ groups
docker cdrom floppy sudo audio dip video plugdev netdev bluetooth scanner lpadmin phunc20 wheel
~/git-repos/codewithsk/JuliaCon2021$
```
