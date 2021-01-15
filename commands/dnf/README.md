## Configuration
People recommend adding three lines to `/etc/dnf/dnf.conf`
- `fastestmirror=True      `
- `deltarpm=True           `
- `max_parallel_downloads=7`
```bash
[phunc20@localhost ~]$ cat /etc/dnf/dnf.conf
[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
best=False
skip_if_unavailable=True
fastestmirror=True
deltarpm=True
max_parallel_downloads=7
```

## As of 2021/01/14, RPM Fusion
I am new to Fedora, but people seems to recommend
- `sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-33.noarch.rpm`
- `sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-free-release-33.noarch.rpm`
These seems to open Fedora's package manager to more packages, both free and nonfree.
