`apt show <package>` will print out detailed information on `<package>`, things like
- its open source repo (often github or gitlab)
- its maintainer and their email

For example, let's see `sudo`'s info:
```bash
phunc20@cingular-x61s:~$ apt show sudo                                                           [9/9]
Package: sudo
Version: 1.8.27-1+deb10u3
Priority: optional
Section: admin
Maintainer: Bdale Garbee <bdale@gag.com>
Installed-Size: 3,882 kB
Depends: libaudit1 (>= 1:2.2.1), libc6 (>= 2.27), libpam0g (>= 0.99.7.1), libselinux1 (>= 1.32), libpa
m-modules, lsb-base
Conflicts: sudo-ldap
Replaces: sudo-ldap
Homepage: http://www.sudo.ws/
Download-Size: 1,244 kB
APT-Manual-Installed: yes
APT-Sources: http://security.debian.org/debian-security buster/updates/main amd64 Packages
Description: Provide limited super user privileges to specific users
 Sudo is a program designed to allow a sysadmin to give limited root
 privileges to users and log root activity.  The basic philosophy is to give
 as few privileges as possible but still allow people to get their work done.
 .
 This version is built with minimal shared library dependencies, use the
 sudo-ldap package instead if you need LDAP support for sudoers.

N: There is 1 additional record. Please use the '-a' switch to see it
phunc20@cingular-x61s:~$
```
