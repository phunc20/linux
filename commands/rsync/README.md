## Basic Usage
- `rsync -rP from_folder/ to_folder/`
    - `to_folder` could be non-existant before this command; it will create it.
    - The second slash is redudant, i.e. the following is equiv.:
      ```bash
      rsync -rP from_folder/ to_folder
      ```
      But the first slash is **obligatory**. Otherwise, e.g.
      ```bash
      /tmp $ tree -a from/
      from/
      ├── a
      │   └── apple
      ├── b
      │   └── butt
      └── c
      
      4 directories, 2 files
      /tmp $ rsync -rP from/ to
      sending incremental file list
      created directory to
      ./
      a/
      a/apple
                    0 100%    0.00kB/s    0:00:00 (xfr#1, to-chk=1/6)
      b/
      b/butt
                    0 100%    0.00kB/s    0:00:00 (xfr#2, to-chk=0/6)
      c/
      /tmp $ tree -a to/
      to/
      ├── a
      │   └── apple
      ├── b
      │   └── butt
      └── c
      
      4 directories, 2 files
      /tmp $ rm -rf to/
      /tmp $ rsync -rP from to
      sending incremental file list
      created directory to
      from/
      from/a/
      from/a/apple
                    0 100%    0.00kB/s    0:00:00 (xfr#1, to-chk=1/6)
      from/b/
      from/b/butt
                    0 100%    0.00kB/s    0:00:00 (xfr#2, to-chk=0/6)
      from/c/
      /tmp $ tree -a to/
      to/
      └── from
          ├── a
          │   └── apple
          ├── b
          │   └── butt
          └── c
      
      5 directories, 2 files
      /tmp $
      ```
- `--exclude=PATTERN` can be used to tell Linux not to sync some subfolders
    - e.g.
      ```bash
      /tmp $ tree -a from/
      from/
      ├── a
      │   └── apple
      ├── b
      │   └── butt
      ├── c
      └── .hidden
          └── .secret
      
      5 directories, 3 files
      /tmp $ rsync  --exclude='a' -rP from/ to
      sending incremental file list
      .hidden/
      .hidden/.secret
                    8 100%    0.00kB/s    0:00:00 (xfr#1, to-chk=1/6)
      b/butt
                    0 100%    0.00kB/s    0:00:00 (xfr#2, to-chk=0/6)
      /tmp $ tree -a to/
      to/
      ├── b
      │   └── butt
      ├── c
      └── .hidden
          └── .secret
      
      4 directories, 2 files
      /tmp $ rm -rf to/
      /tmp $ rsync --exclude='.*' -rP from/ to
      sending incremental file list
      created directory to
      ./
      a/
      a/apple
                    0 100%    0.00kB/s    0:00:00 (xfr#1, to-chk=1/6)
      b/
      b/butt
                    0 100%    0.00kB/s    0:00:00 (xfr#2, to-chk=0/6)
      c/
      /tmp $ tree -a to/
      to/
      ├── a
      │   └── apple
      ├── b
      │   └── butt
      └── c
      
      4 directories, 2 files
      /tmp $
      ```
    - It's fine to put `--exclude` either before `-rP` or after `-rP`, e.g.
      the following two are both eligible commands:
        - `rsync -rP from/ to/ --exclude=".*"`
        - `rsync --exclude=".*" -rP from/ to/`
    - The equal sign can also be a space, i.e.
        - `rsync -rP from/ to/ --exclude=".*"`
        - `rsync -rP from/ to/ --exclude ".*"`
      will do **the same** thing.
    - Multiple exclude patterns? No worries.
        - Either use `--exclude=PATTERN` multiple times, e.g.
          ```bash
          $ rsync -rP from/ to/ --exclude='a' --exclude='.*'
          ```
        - Or surround multiple patterns by **curly brackets**
          separated by **commas**, e.g.
          ```bash
          $ rsync -rP from/ to/ --exclude={'a','.*'}
          ```
        - Or use `--exclude-from=FILE` (To be elaborated later)
    - Note that wild card should be **surrounded by quotes**.
      _Both single quotes and double quotes_ are fine. (Otherwise, it will
      be recognized as wild card for the current directory and be expanded
      and understood as current folder's file patterns.)
    - `--include` must go **before** `--exclude`!


## `rsync -av from_folder/ to_folder/` problems?
Don't use this anymore; instead, use **`rsync -rP from_folder/ to_folder/`**. (cf. [rsync arch wiki](https://wiki.archlinux.org/index.php/Rsync))


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
