By default, Arch linux does not install the package which contains the command `locate` for you. You have to install by yourself: **`pacman -S mlocate`** (or there seems to be another similar package called `plocate`, cf. `pacman -Ss locate`)

Next, right after installation, you cannot run the command `locate` immediately; if you did, you'd run into
```bash
~/.../youtube/missing-semester/02-shell ❯❯❯ locate resolution
locate: can not stat () `/var/lib/mlocate/mlocate.db': No such file or directory
```

That's because you don't have the database for searching file names yet. Such a database can be first constructed by the command **`updatedb`**, which you have to run as `root` (because it will search thru even those paths that are not given priviledge to normal users)
```bash
~/.../youtube/missing-semester/02-shell ❯❯❯ updatedb
updatedb: can not open a temporary file for `/var/lib/mlocate/mlocate.db'
~/.../youtube/missing-semester/02-shell ❯❯❯ sudo updatedb  # This command takes time
~/.../youtube/missing-semester/02-shell ❯❯❯
```
