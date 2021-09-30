## Search Recursively but Restricted to A Certain File Extention
For example, you might want to search for some keyword in your Python scripts, but in other files like `.txt`, `.log`,
etc. this keyword exists as well. Then you can restrict your search to `.py` files by
```bash
grep -Rin <keyword> ./**/*.py
```


## `--` (end of option)
In many commands, `--` **marks the end of the option fields**. This might be somewhat hard to understand without an
example. Luckily, `grep` has a good example for this.
```bash
~/git-repos/phunc20/linux ❯❯❯ grep -Rn ----
grep: unrecognized option '----'
Usage: grep [OPTION]... PATTERNS [FILE]...
Try 'grep --help' for more information.
~/git-repos/phunc20/linux ❯❯❯ grep -Rn "----"
grep: unrecognized option '----'
Usage: grep [OPTION]... PATTERNS [FILE]...
Try 'grep --help' for more information.
~/git-repos/phunc20/linux ❯❯❯ grep -Rn -- "----" | head -10
.git/hooks/update.sample:9:# ------
gentoo/suckless/dwm/README:7:------------
gentoo/suckless/dwm/README:12:------------
gentoo/suckless/dwm/README:23:-----------
gentoo/suckless/dwm/README:46:-------------
gentoo/suckless/dmenu/README:7:------------
gentoo/suckless/dmenu/README:12:------------
gentoo/suckless/dmenu/README:23:-------------
gentoo/suckless/st/README:2:--------------------
gentoo/suckless/st/README:7:------------
~/git-repos/phunc20/linux ❯❯❯
```


## <code>or</code>
<code><b>\</b></code> is <code>or</code>. Just remember to escape (<code><b>\|</b></code>).
```bash
[phunc20@denjiro-x220 downloads]$ sha256sum -c julia-1.5.1.sha256 2>/dev/null | grep 'FAIL\|No'
julia-1.5.1-freebsd-x86_64.tar.gz: FAILED open or read
julia-1.5.1-linux-aarch64.tar.gz: FAILED open or read
julia-1.5.1-linux-i686.tar.gz: FAILED open or read
julia-1.5.1-mac64.dmg: FAILED open or read
julia-1.5.1-mac64.tar.gz: FAILED open or read
julia-1.5.1-musl-x86_64.tar.gz: FAILED open or read
julia-1.5.1-win32.exe: FAILED open or read
julia-1.5.1-win32.tar.gz: FAILED open or read
julia-1.5.1-win32.zip: FAILED open or read
julia-1.5.1-win64.exe: FAILED open or read
julia-1.5.1-win64.tar.gz: FAILED open or read
julia-1.5.1-win64.zip: FAILED open or read

[phunc20@denjiro-x220 downloads]$ sha256sum -c julia-1.5.1.sha256 | grep 'FAIL\|OK'
sha256sum: julia-1.5.1-freebsd-x86_64.tar.gz: No such file or directory
sha256sum: julia-1.5.1-linux-aarch64.tar.gz: No such file or directory
sha256sum: julia-1.5.1-linux-i686.tar.gz: No such file or directory
julia-1.5.1-freebsd-x86_64.tar.gz: FAILED open or read
julia-1.5.1-linux-aarch64.tar.gz: FAILED open or read
julia-1.5.1-linux-i686.tar.gz: FAILED open or read
sha256sum: julia-1.5.1-mac64.dmg: No such file or directory
sha256sum: julia-1.5.1-mac64.tar.gz: No such file or directory
julia-1.5.1-linux-x86_64.tar.gz: OK
sha256sum: julia-1.5.1-musl-x86_64.tar.gzjulia-1.5.1-mac64.dmg: FAILED open or read
: No such file or directoryjulia-1.5.1-mac64.tar.gz: FAILED open or read

sha256sum: julia-1.5.1-musl-x86_64.tar.gz: FAILED open or read
julia-1.5.1-win32.exe: No such file or directory
julia-1.5.1-win32.exe: FAILED open or read
sha256sum: julia-1.5.1-win32.tar.gz: No such file or directory
julia-1.5.1-win32.tar.gz: FAILED open or read
sha256sum: julia-1.5.1-win32.zip: No such file or directory
julia-1.5.1-win32.zip: FAILED open or read
sha256sum: julia-1.5.1-win64.exe: No such file or directory
sha256sum: julia-1.5.1-win64.tar.gz: No such file or directory
sha256sum: julia-1.5.1-win64.zip: No such file or directory
sha256sum: WARNING: 12 listed files could not be read
julia-1.5.1-win64.exe: FAILED open or read
julia-1.5.1-win64.tar.gz: FAILED open or read
julia-1.5.1-win64.zip: FAILED open or read
```


## Separator
Use `\(\)` as separator. For instance, in the following snippet, the first command separates

- the three options `CPU`, `Thread`, `Core`
- `(s)`

This separation prevents us from the laborous `grep "\(CPU(s)\|Thread(s)\|Core(s)\)"`.
```bash
phunc20@cingular-x61s:~$ lscpu | grep "\(CPU\|Thread\|Core\)(s)"
CPU(s):              2
On-line CPU(s) list: 0,1
Thread(s) per core:  1
Core(s) per socket:  2
NUMA node0 CPU(s):   0,1
phunc20@cingular-x61s:~$ lscpu | grep "\(CPU\|Thread\|Core\)"
CPU op-mode(s):      32-bit, 64-bit
CPU(s):              2
On-line CPU(s) list: 0,1
Thread(s) per core:  1
Core(s) per socket:  2
CPU family:          6
Model name:          Intel(R) Core(TM)2 Duo CPU     L7500  @ 1.60GHz
CPU MHz:             1182.287
CPU max MHz:         1601.0000
CPU min MHz:         800.0000
NUMA node0 CPU(s):   0,1
```


## Easier Visulization
Sometimes, when the grepped lines are long, it's hard to focus on what are being grepped. In this case, the `--color` option is useful.
You can even combine this with other commands that cannot display color, e.g. `sed -f csv.sed grades.csv | grep --color "20/20"`

`--color` can also be specified as `--color=always` or never, etc. I haven't really understood what these mean.


