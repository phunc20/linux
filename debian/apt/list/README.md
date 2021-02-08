## List installed packages on the current machine
For example, to confirm whether you have installed, say, `xclip`, you can
```bash
phunc20@cingular-x61s:~$ apt list --installed | grep xclip

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

phunc20@cingular-x61s:~$
```
Note that the annoying warning message can be gotten rid of using a redirection like `2>/dev/null`.


## List all available packages
This seems to need no Internet connection; it seems to `cat` some local file containing the
packages' info, which might get updated each time you `sudo apt update`.

Besides, `apt list` (Debian) resembles `dnf list` (Fedora).
```bash
phunc20@cingular-x61s:~$ apt list 2>/dev/null | wc -l
56958
phunc20@cingular-x61s:~$ apt list --installed 2>/dev/null | wc -l
2218
phunc20@cingular-x61s:~$
```
