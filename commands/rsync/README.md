


## `rsync -av folderA/ somewhere/folderA/` problems?
Don't use this anymore; instead, use **`rsync -rP folderA somewhere/`**. (cf. [rsync arch wiki](https://wiki.archlinux.org/index.php/Rsync))


## With `ssh`
Cf. <https://unix.stackexchange.com/questions/127352/specify-identity-file-id-rsa-with-rsync>

You can specify the exact `ssh` command via the `'-e'` option:

```bash
rsync -Pav -e "ssh -i $HOME/.ssh/somekey" username@hostname:/from/dir/ /to/dir/
```
Many ssh users are unfamiliar with their `~/.ssh/config` file. You can specify default settings per host via the config file.
```
Host hostname
    User username
    IdentityFile ~/.ssh/somekey
```
In the long run it is best to learn the `~/.ssh/config` file.
