Since all desktop manager must have its default pdf viewer program installed and that that
program might not be one's favorite, it occurs to users to find out what that installed
pdf viewer is and `apt remove/purge` it.

## `xfce`
Here is the steps I took to find out `xfce`'s installed pdf viewer program.
01. Try to open up some pdf file.
  - Just open up any file manager and browser to the file and doulbe-click it.
  - or install and use things like `ranger`, `vifm` to do the same.
02. Then use `ps` command to see which process is running the pdf viewer.
  ```bash
  phunc20@cingular-x61s:~$ ps -aef --forest | grep "pdf"
  phunc20   4959  4588  0 12:28 pts/6    00:00:00      \_ grep pdf
  phunc20   4554     1  0 12:11 ?        00:00:00 /bin/sh -c set -- '/home/phunc20/biblio/books/cs/linux/debian/debian-handbook.pdf'; atril -- "$@"
  phunc20   4555  4554  1 12:11 ?        00:00:11  \_ atril -- /home/phunc20/biblio/books/cs/linux/debian/debian-handbook.pdf
  phunc20@cingular-x61s:~$
  ```
03. Confirm the package/program of the pdf viewer.
  ```bash
  phunc20@cingular-x61s:~$ pgrep -a atril                                                       [73/724]
  4555 atril -- /home/phunc20/biblio/books/cs/linux/debian/debian-handbook.pdf
  4560 /usr/lib/atril/atrild
  phunc20@cingular-x61s:~$ apt list --installed | grep atril
  
  WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
  
  atril-common/stable,now 1.20.3-1+deb10u1 all [installed,automatic]
  atril/stable,now 1.20.3-1+deb10u1 amd64 [installed,automatic]
  libatrildocument3/stable,now 1.20.3-1+deb10u1 amd64 [installed,automatic]
  libatrilview3/stable,now 1.20.3-1+deb10u1 amd64 [installed,automatic]
  phunc20@cingular-x61s:~$
  ```
04. Purge or remove the package
  ```bash
  phunc20@cingular-x61s:~$ sudo apt purge atril                                                 [62/724]
  Reading package lists... Done
  Building dependency tree
  Reading state information... Done
  The following packages were automatically installed and are no longer required:
    atril-common fonts-mathjax libatrildocument3 libatrilview3 libcaja-extension1 libdjvulibre-text
    libdjvulibre21 libgail-3-0 libgirara-gtk3-3 libgxps2 libjs-mathjax libkpathsea6 libspectre1
    libsynctex2
  Use 'sudo apt autoremove' to remove them.
  The following packages will be REMOVED:
    atril*
  0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
  After this operation, 702 kB disk space will be freed.
  Do you want to continue? [Y/n]
  (Reading database ... 218992 files and directories currently installed.)
  Removing atril (1.20.3-1+deb10u1) ...
  Processing triggers for mime-support (3.62) ...
  Processing triggers for libglib2.0-0:amd64 (2.58.3-2+deb10u2) ...
  Processing triggers for man-db (2.8.5-2) ...
  Processing triggers for desktop-file-utils (0.23-4) ...
  phunc20@cingular-x61s:~$ sudo apt autoremove
  Reading package lists... Done
  Building dependency tree
  Reading state information... Done
  The following packages will be REMOVED:
    atril-common fonts-mathjax libatrildocument3 libatrilview3 libcaja-extension1 libdjvulibre-text
    libdjvulibre21 libgail-3-0 libgirara-gtk3-3 libgxps2 libjs-mathjax libkpathsea6 libspectre1
    libsynctex2
  0 upgraded, 0 newly installed, 14 to remove and 0 not upgraded.
  After this operation, 61.6 MB disk space will be freed.
  Do you want to continue? [Y/n]
  (Reading database ... 218973 files and directories currently installed.)
  Removing atril-common (1.20.3-1+deb10u1) ...
  (Reading database ... 218973 files and directories currently installed.)
  Removing atril-common (1.20.3-1+deb10u1) ...
  Removing libatrilview3 (1.20.3-1+deb10u1) ...
  Removing libatrildocument3 (1.20.3-1+deb10u1) ...
  Removing libjs-mathjax (2.7.4+dfsg-1) ...
  Removing fonts-mathjax (2.7.4+dfsg-1) ...
  dpkg: warning: while removing fonts-mathjax, directory '/usr/share/javascript/mathjax/fonts/HTML-CSS/T
  eX/otf' not empty so not removed
  Removing libcaja-extension1:amd64 (1.20.3-1+b1) ...
  Removing libdjvulibre21:amd64 (3.5.27.1-10) ...
  Removing libdjvulibre-text (3.5.27.1-10) ...
  Removing libgail-3-0:amd64 (3.24.5-1) ...
  Removing libgirara-gtk3-3:amd64 (0.3.2-1) ...
  Removing libgxps2:amd64 (0.3.1-1) ...
  Removing libkpathsea6:amd64 (2018.20181218.49446-1) ...
  Removing libspectre1:amd64 (0.2.8-1) ...
  Removing libsynctex2:amd64 (2018.20181218.49446-1) ...
  Processing triggers for hicolor-icon-theme (0.17-2) ...
  Processing triggers for libc-bin (2.28-10) ...
  Processing triggers for fontconfig (2.13.1-2) ...
  phunc20@cingular-x61s:~$
  ```
05. Install your favorite pdf viewer. For example,
  ```bash
  phunc20@cingular-x61s:~$ sudo apt install zathura
  Reading package lists... Done
  Building dependency tree
  Reading state information... Done
  The following additional packages will be installed:
    libgirara-gtk3-3 libsynctex2 zathura-pdf-poppler
    Suggested packages:
      zathura-ps zathura-djvu zathura-cb
      The following NEW packages will be installed:
        libgirara-gtk3-3 libsynctex2 zathura zathura-pdf-poppler
        0 upgraded, 4 newly installed, 0 to remove and 0 not upgraded.
        Need to get 308 kB of archives.
        After this operation, 1,098 kB of additional disk space will be used.
  Need to get 308 kB of archives.                                                                [0/724]
  After this operation, 1,098 kB of additional disk space will be used.
  Do you want to continue? [Y/n]
  Get:1 http://deb.debian.org/debian buster/main amd64 libgirara-gtk3-3 amd64 0.3.2-1 [57.8 kB]
  Get:2 http://deb.debian.org/debian buster/main amd64 libsynctex2 amd64 2018.20181218.49446-1 [80.5 kB]
  Get:3 http://deb.debian.org/debian buster/main amd64 zathura-pdf-poppler amd64 0.2.9-1 [9,248 B]
  Get:4 http://deb.debian.org/debian buster/main amd64 zathura amd64 0.4.3-1 [161 kB]
  Fetched 308 kB in 0s (790 kB/s)
  Selecting previously unselected package libgirara-gtk3-3:amd64.
  (Reading database ... 213509 files and directories currently installed.)
  Preparing to unpack .../libgirara-gtk3-3_0.3.2-1_amd64.deb ...
  Unpacking libgirara-gtk3-3:amd64 (0.3.2-1) ...
  Selecting previously unselected package libsynctex2:amd64.
  Preparing to unpack .../libsynctex2_2018.20181218.49446-1_amd64.deb ...
  Unpacking libsynctex2:amd64 (2018.20181218.49446-1) ...
  Selecting previously unselected package zathura-pdf-poppler.
  Preparing to unpack .../zathura-pdf-poppler_0.2.9-1_amd64.deb ...
  Unpacking zathura-pdf-poppler (0.2.9-1) ...
  Selecting previously unselected package zathura.
  Preparing to unpack .../zathura_0.4.3-1_amd64.deb ...
  Unpacking zathura (0.4.3-1) ...
  Setting up libgirara-gtk3-3:amd64 (0.3.2-1) ...
  Setting up libsynctex2:amd64 (2018.20181218.49446-1) ...
  Setting up zathura-pdf-poppler (0.2.9-1) ...
  Setting up zathura (0.4.3-1) ...
  Processing triggers for libc-bin (2.28-10) ...
  Processing triggers for man-db (2.8.5-2) ...
  Processing triggers for desktop-file-utils (0.23-4) ...
  Processing triggers for mime-support (3.62) ...
  Processing triggers for hicolor-icon-theme (0.17-2) ...
  phunc20@cingular-x61s:~$
  ```
