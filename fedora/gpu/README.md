
```bash
[phunc20@localhost ~]$ uname -a
Linux localhost.localdomain 5.8.15-301.fc33.x86_64 #1 SMP Thu Oct 15 16:58:06 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
[phunc20@localhost ~]$ dnf list | grep kernel-devel
kernel-devel.x86_64                                                        5.10.7-200.fc33                                                  @updates                  
[phunc20@localhost ~]$ dnf search kernel-devel
Last metadata expiration check: 1:48:54 ago on Tue 19 Jan 2021 12:39:54 PM +07.
==================================================================== Name Exactly Matched: kernel-devel =====================================================================
kernel-devel.x86_64 : Development package for building kernel modules to match the kernel
======================================================================= Summary Matched: kernel-devel =======================================================================
buildsys-build-rpmfusion-kerneldevpkgs-current.x86_64 : Meta-package to get all current kernel-devel packages into the buildroot
[phunc20@localhost ~]$ sudo dnf install kernel-devel-5.8.15
Last metadata expiration check: 2:54:59 ago on Tue 19 Jan 2021 11:34:13 AM +07.
Dependencies resolved.
=============================================================================================================================================================================
 Package                                    Architecture                         Version                                          Repository                            Size
 =============================================================================================================================================================================
 Installing:
  kernel-devel                               x86_64                               5.8.15-301.fc33                                  fedora                                13 M

  Transaction Summary
  =============================================================================================================================================================================
  Install  1 Package

  Total download size: 13 M
  Installed size: 52 M
  Is this ok [y/N]: 

```
