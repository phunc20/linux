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

## Troubleshoot
- unknown trust: `sudo pacman-key --refresh email@alex19ep.me`
  ```bash
  error: libspeechd: signature from "Alexander Epaneshnikov <email@alex19ep.me>" is unknown trust
  :: File /var/cache/pacman/pkg/libspeechd-0.11.1-1-x86_64.pkg.tar.zst is corrupted (invalid or corrupted package (PGP signature)).
  Do you want to delete it? [Y/n] n
  error: failed to commit transaction (invalid or corrupted package)
  Errors occurred, no packages were upgraded.
  ~ ❯❯❯ sudo pacman-key --refresh email@alex19ep.me
  gpg: error retrieving 'email@alex19ep.me' via WKD: No data
  gpg: error reading key: No data
  gpg: key DAD6F3056C897266: "Alexander Epaneshnikov <email@alex19ep.me>" 4 new signatures
  gpg: Total number processed: 1
  gpg:         new signatures: 4
  gpg: key 1EB2638FF56C0C53: no user ID for key signature packet of class 10
  gpg: key 1EB2638FF56C0C53: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: key 786C63F330D7CB92: no user ID for key signature packet of class 10
  gpg: marginals needed: 3  completes needed: 1  trust model: pgp
  gpg: depth: 0  valid:   1  signed:   6  trust: 0-, 0q, 0n, 0m, 0f, 1u
  gpg: depth: 1  valid:   6  signed:  84  trust: 0-, 0q, 0n, 6m, 0f, 0u
  gpg: depth: 2  valid:  79  signed:  26  trust: 79-, 0q, 0n, 0m, 0f, 0u
  gpg: next trustdb check due at 2022-02-03
  pub   rsa4096 2020-03-04 [SC] [expires: 2023-01-20]
        6C7F7F22E0152A6FD5728592DAD6F3056C897266
  uid           [ unknown] Alexander Epaneshnikov <email@alex19ep.me>
  uid           [  full  ] Alexander Epaneshnikov <alex19ep@archlinux.org>
  uid           [ unknown] Alexander Epaneshnikov <aarnaarn2@gmail.com>
  uid           [ unknown] Alexander Epaneshnikov (second email) <alex19EP@yandex.ru>
  sub   rsa4096 2020-03-04 [A] [expires: 2023-01-20]
  sub   rsa4096 2020-03-04 [E] [expires: 2023-01-20]
  sub   rsa4096 2020-03-04 [S] [expires: 2023-01-20]
  
  ~ ❯❯❯ pacman -Syu
  :: Synchronizing package databases...
   core is up to date
   extra is up to date
   community is up to date
  
  ```


