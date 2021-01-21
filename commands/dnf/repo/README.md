- `dnf repolist` allows one to see all the repos (Or the more verbose `dnf repolist -v`)
- `sudo dnf config-manager --add-repo=<url>` allows to add a new repo
```bash
[phunc20@localhost ~]$ dnf repolist
repo id                                                                      repo name
fedora                                                                       Fedora 33 - x86_64
fedora-cisco-openh264                                                        Fedora 33 openh264 (From Cisco) - x86_64
fedora-modular                                                               Fedora Modular 33 - x86_64
rpmfusion-free                                                               RPM Fusion for Fedora 33 - Free
rpmfusion-free-updates                                                       RPM Fusion for Fedora 33 - Free - Updates
rpmfusion-nonfree                                                            RPM Fusion for Fedora 33 - Nonfree
rpmfusion-nonfree-updates                                                    RPM Fusion for Fedora 33 - Nonfree - Updates
updates                                                                      Fedora 33 - x86_64 - Updates
updates-modular                                                              Fedora Modular 33 - x86_64 - Updates
[phunc20@localhost ~]$ sudo dnf config-manager --add-repo=https://download.docker.com/linux/fedora/docker-ce.repo
Adding repo from: https://download.docker.com/linux/fedora/docker-ce.repo
[phunc20@localhost ~]$ dnf repolist
repo id                                                                      repo name
docker-ce-stable                                                             Docker CE Stable - x86_64
fedora                                                                       Fedora 33 - x86_64
fedora-cisco-openh264                                                        Fedora 33 openh264 (From Cisco) - x86_64
fedora-modular                                                               Fedora Modular 33 - x86_64
rpmfusion-free                                                               RPM Fusion for Fedora 33 - Free
rpmfusion-free-updates                                                       RPM Fusion for Fedora 33 - Free - Updates
rpmfusion-nonfree                                                            RPM Fusion for Fedora 33 - Nonfree
rpmfusion-nonfree-updates                                                    RPM Fusion for Fedora 33 - Nonfree - Updates
updates                                                                      Fedora 33 - x86_64 - Updates
updates-modular                                                              Fedora Modular 33 - x86_64 - Updates
[phunc20@localhost ~]$ 
```
