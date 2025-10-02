```bash
$ man systemctl
$ man systemd
$ man systemd.service
```



```bash
~/.../02-types-operators-expressions/09-bitwise_operators/exo-02-06 ❯❯❯ sudo systemctl disable postgresql
Removed /etc/systemd/system/multi-user.target.wants/postgresql.service.
```

Note that the path `/etc/systemd/system/multi-user.target.wants/postgresql.service.` seems to be similar to the path which is needed to turn of desktop manager of Ubuntu.


## Usecases
### Usercase 1: Upon logging, open a terminal and run some executable
See `service_files/HOME/.local/share/systemd/user/morning_dance.service`, which
one can register into systemd by

```
systemctl --user daemon-reload
systemctl --user enable /path/to/morning_dance.service
systemctl --user start /path/to/morning_dance.service
```

Next time when you login, a terminal will open automatically and it will run the executable.

Note. This service was written for Fedora 41. Direct usage on other OSes might
require some adaptation.
