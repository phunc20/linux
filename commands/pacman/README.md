#### General update after installing from ISO image
```bash
sudo pacman -Syyu
```



### A few tricks
- To see all the packages belonging to a **package group**, e.g. <code>texlive-most</code>, <code>texlive-lang</code>, use the <code><b>-Sg</b></code> option.
```bash
[phunc20@denjiro-x220 brave]$ pacman -Sg texlive-most
texlive-most texlive-bibtexextra
texlive-most texlive-core
texlive-most texlive-fontsextra
texlive-most texlive-formatsextra
texlive-most texlive-games
texlive-most texlive-humanities
texlive-most texlive-latexextra
texlive-most texlive-music
texlive-most texlive-pictures
texlive-most texlive-pstricks
texlive-most texlive-publishers
texlive-most texlive-science
[phunc20@denjiro-x220 brave]$ pacman -Sg texlive-lang
texlive-lang texlive-langchinese
texlive-lang texlive-langcyrillic
texlive-lang texlive-langextra
texlive-lang texlive-langgreek
texlive-lang texlive-langjapanese
texlive-lang texlive-langkorean
```
- <code><b>pacman -Ssq package_regex</b></code> where <code><b>-q</b></code> stands for <b>quiet</b>.


## AUR Packages
- How to install an AUR package?
  - For example, `brave-bin`
  01. Find one athorative repo online and clone it
      ```bash
      ~/corbeille $ git clone https://aur.archlinux.org/brave-bin.git
      Cloning into 'brave-bin'...
      remote: Enumerating objects: 1170, done.
      remote: Counting objects: 100% (1170/1170), done.
      remote: Compressing objects: 100% (564/564), done.
      remote: Total 1170 (delta 612), reused 1163 (delta 606), pack-reused 0
      Receiving objects: 100% (1170/1170), 305.24 KiB | 437.00 KiB/s, done.
      Resolving deltas: 100% (612/612), done.
      ~/corbeille $ cd brave-bin/
      ```
  02. Read `PKGBUILD` to verify that there is no malicious command inside. Then run the `makepkg` command.
      ```bash
      ~/corbeille/brave-bin $ ls
      brave-bin.sh  brave-browser.desktop  logo.png  PKGBUILD
      ~/corbeille/brave-bin $ vim PKGBUILD
      ~/corbeille/brave-bin $ makepkg
      ==> Making package: brave-bin 1:1.26.77-2 (Sat 24 Jul 2021 08:42:11 PM +07)
      ==> Checking runtime dependencies...
      ==> Checking buildtime dependencies...
      ==> Retrieving sources...
        -> Downloading brave-bin-1.26.77.zip...
        % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                       Dload  Upload   Total   Spent    Left  Speed
      100   645  100   645    0     0   1949      0 --:--:-- --:--:-- --:--:--  1954
      100  115M  100  115M    0     0  4737k      0  0:00:25  0:00:25 --:--:-- 5660k
        -> Found brave-bin.sh
        -> Found brave-browser.desktop
        -> Found logo.png
      ==> Validating source files with sha256sums...
          brave-bin-1.26.77.zip ... Passed
          brave-bin.sh ... Passed
          brave-browser.desktop ... Passed
          logo.png ... Passed
      ==> Extracting sources...
      ==> Starting prepare()...
      ==> Entering fakeroot environment...
      ==> Starting package()...
      ==> Tidying install...
        -> Removing libtool files...
        -> Purging unwanted files...
        -> Removing static library files...
        -> Compressing man and info pages...
      ==> Checking for packaging issues...
      ==> Creating package "brave-bin"...
        -> Generating .PKGINFO file...
        -> Generating .BUILDINFO file...
        -> Generating .MTREE file...
        -> Compressing package...
      ==> Leaving fakeroot environment.
      ==> Finished making: brave-bin 1:1.26.77-2 (Sat 24 Jul 2021 08:42:46 PM +07)
      ~/corbeille/brave-bin $ ls
      brave-bin-1:1.26.77-2-x86_64.pkg.tar.zst  brave-bin.sh           logo.png  PKGBUILD
      brave-bin-1.26.77.zip                     brave-browser.desktop  pkg       src
      ```
  03. Install by the command `pacman -U <package_filename>`. In our case, `<package_filename>` is the newly generated file `brave-bin-1:1.26.77-2-x86_64.pkg.tar.zst`
      ```bash
      ~/corbeille/brave-bin $ ls
      brave-bin-1:1.26.77-2-x86_64.pkg.tar.zst  brave-bin.sh           logo.png  PKGBUILD
      brave-bin-1.26.77.zip                     brave-browser.desktop  pkg       src
      ~/corbeille/brave-bin $ pacman -U brave-bin
      loading packages...
      error: 'brave-bin': could not find or read package
      ~/corbeille/brave-bin $ pacman -U brave-bin-1\:1.26.77-2-x86_64.pkg.tar.zst
      loading packages...
      resolving dependencies...
      looking for conflicting packages...
      
      Packages (1) brave-bin-1:1.26.77-2
      
      Total Installed Size:  264.60 MiB
      Net Upgrade Size:       20.57 MiB
      
      :: Proceed with installation? [Y/n]
      (1/1) checking keys in keyring                                            [##########################################] 100%
      (1/1) checking package integrity                                          [##########################################] 100%
      (1/1) loading package files                                               [##########################################] 100%
      (1/1) checking for file conflicts                                         [##########################################] 100%
      (1/1) checking available disk space                                       [##########################################] 100%
      :: Processing package changes...
      (1/1) upgrading brave-bin                                                 [##########################################] 100%
      :: Running post-transaction hooks...
      (1/2) Arming ConditionNeedsUpdate...
      (2/2) Updating the desktop file MIME type cache...
      ```




