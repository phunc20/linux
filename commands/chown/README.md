## `chown`
`chown` is the command to change the ownership of a file.

```bash
~/downloads ❯❯❯ ll redhat-instance.pem
-rwxr-xr-x 1 root root 1.1K Jan  8  2021 redhat-instance.pem
~/downloads ❯❯❯ ll redhat-instance.pem
-r-------- 1 root root 1.1K Jan  8  2021 redhat-instance.pem
~/downloads ❯❯❯ chown phunc20 redhat-instance.pem
chown: changing ownership of 'redhat-instance.pem': Operation not permitted
~/downloads ❯❯❯ sudo chown phunc20 redhat-instance.pem
~/downloads ❯❯❯ ll redhat-instance.pem
-r-------- 1 phunc20 root 1.1K Jan  8  2021 redhat-instance.pem
~/downloads ❯❯❯ chgrp wheel redhat-instance.pem
~/downloads ❯❯❯ ll redhat-instance.pem
-r-------- 1 phunc20 wheel 1.1K Jan  8  2021 redhat-instance.pem
```
