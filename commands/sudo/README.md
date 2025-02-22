To change into a different user, an often used command is

```
sudo -iu <username|uid>
```

where

- `-i` means to login
- `-u` is used to specify user
    - w/o `-u`, the user will by default supposed as root


Here is an example
```bash
~ $ sudo -i
[root@beetroot ~]#
logout
~ $ sudo -iu "#0"
[root@beetroot ~]#
logout
~ $ sudo -iu "#1"
This account is currently not available.
~ $ sudo -iu "#2"
This account is currently not available.
~ $ id
uid=1000(phunc20) gid=998(wheel) groups=998(wheel),108(vboxusers),970(brlapi),971(docker),991(lp)
~ $ sudo -iu "#1000"
~ $ 
logout
~ $ id postgres
uid=973(postgres) gid=973(postgres) groups=973(postgres)
~ $ sudo -iu "#973"
[postgres@beetroot ~]$
logout
~ $ sudo -iu postgres
[postgres@beetroot ~]$
logout
~ $ 
```
