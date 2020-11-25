## Example
Around end November 2020, when I installed `texlive` on parabola, it always gave a warning about Bill Auger's signature.

**Rmk.** The same thing had occurred when I tried to use the iso image in a USB key to install parabola on another machine, same Bill Auger.

```bash
[phunc20@tako-x60 ~]$ pacman -S texlive-science
resolving dependencies...
looking for conflicting packages...

Packages (11) gd-2.3.0-1.0  libpaper-1.1.28-1.1  libsigsegv-2.12-2.0  poppler-0.90.0-1.0  potrace-1.16-2.0  run-parts-4.8.6.1-2.1  t1lib-5.1.2-8.0  texlive-bin-2020.54586-4.parabola2
              texlive-core-2020.55416-1.par1  zziplib-0.13.71-1.0  texlive-science-2020.55390-1.0

Total Download Size:   197.67 MiB
Total Installed Size:  623.90 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 texlive-bin-2020.54586-4.parabola2-i686                                                53.6 MiB  1683 KiB/s 00:33 [#####################################################################] 100%
 texlive-core-2020.55416-1.par1-any                                                    144.0 MiB  2.50 MiB/s 00:58 [#####################################################################] 100%
(11/11) checking keys in keyring                                                                                   [#####################################################################] 100%
(11/11) checking package integrity                                                                                 [#####################################################################] 100%
error: texlive-bin: signature from "bill-auger <bill-auger@peers.community>" is unknown trust
:: File /var/cache/pacman/pkg/texlive-bin-2020.54586-4.parabola2-i686.pkg.tar.xz is corrupted (invalid or corrupted package (PGP signature)).
Do you want to delete it? [Y/n] y
error: texlive-core: signature from "bill-auger <bill-auger@peers.community>" is unknown trust
:: File /var/cache/pacman/pkg/texlive-core-2020.55416-1.par1-any.pkg.tar.xz is corrupted (invalid or corrupted package (PGP signature)).
Do you want to delete it? [Y/n]
error: failed to commit transaction (invalid or corrupted package)
Errors occurred, no packages were upgraded.
```


## Investigation and Solution
- `pacman-key --list-sigs` seems to list all signatures of all packagers
- `pacman-key --list-sigs auger` seems to able to restrict the search

```bash
[phunc20@tako-x60 ~]$ pacman-key --list-sigs Auger
gpg: Note: trustdb not writable
pub   rsa2048 2016-11-30 [SCEA] [expired: 2020-11-19]
      3954A7AB837D0EA9CFA9798925DB7D9B5A8D4B40
uid           [ expired] bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
uid           [ expired] bill-auger <mr.j.spam.me@gmail.com>
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
uid           [ expired] bill-auger <bill-auger@programmer.net>
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
uid           [ expired] [jpeg image of size 6017]
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
```

Note that it seems that all signatures from Bill Auger were expired in October 2020.

Then I went to arch wiki, theme **`pacman`**. There was a troubleshoot for [this issue](https://wiki.archlinux.org/index.php/Pacman/Package_signing#Signature_is_unknown_trust).
And the following was what I did.

```bash
[phunc20@tako-x60 ~]$ sudo pacman-key --refresh-keys
gpg: refreshing 151 keys from hkps://hkps.pool.sks-keyservers.net
gpg: keyserver refresh failed: General error
==> ERROR: A specified local key could not be updated from a keyserver.
```

After that, I did another `pacman -S texlive-bin`, which still failed impitoyably.

```bash
[phunc20@tako-x60 downloads]$ sudo pacman-key --add 0x25db7d9b5a8d4b40.txt
==> Updating trust database...
gpg: next trustdb check due at 2020-12-31
```

Yet another `pacman -S texlive-bin`, but still failed miserably.
Then I thought of being reminded to check and sign the key as follows:
- check
    ```bash
    [phunc20@tako-x60 downloads]$ pacman-key --finger  0x5A8D4B40
    gpg: Note: trustdb not writable
    pub   rsa2048 2016-11-30 [SCEA] [expires: 2025-11-16]
          3954 A7AB 837D 0EA9 CFA9  7989 25DB 7D9B 5A8D 4B40
    uid           [ unknown] bill-auger <bill-auger@peers.community>
    uid           [ unknown] bill-auger <mr.j.spam.me@gmail.com>
    uid           [ unknown] bill-auger <bill-auger@programmer.net>
    uid           [ unknown] [jpeg image of size 6017]
    sub   rsa2048 2016-11-30 [SEA] [expires: 2025-11-16]
    sub   rsa2048 2017-10-16 [S] [expires: 2021-03-24]
    ```
- sign
    ```bash
    [phunc20@tako-x60 downloads]$ sudo pacman-key --lsign-key 0x5A8D4B40
      -> Locally signing key 0x5A8D4B40...
    ==> Updating trust database...
    gpg: next trustdb check due at 2020-12-31
    ```

Still, we are unable to install `texlive` even at this point, after such effort. Same old error.

If we `--list-sigs` now, it's somewhat diff.

```bash
[phunc20@tako-x60 ~]$ pacman-key --list-sigs auger
gpg: Note: trustdb not writable
pub   rsa2048 2016-11-30 [SCEA] [expires: 2025-11-16]
      3954A7AB837D0EA9CFA9798925DB7D9B5A8D4B40
uid           [ unknown] bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
sig 3        25DB7D9B5A8D4B40 2017-07-11  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2017-12-01  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2020-11-17  bill-auger <bill-auger@peers.community>
uid           [ unknown] bill-auger <mr.j.spam.me@gmail.com>
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
sig 3        25DB7D9B5A8D4B40 2017-07-11  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2017-12-01  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2020-11-17  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2016-11-30  bill-auger <bill-auger@peers.community>
uid           [ unknown] bill-auger <bill-auger@programmer.net>
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
sig 3        25DB7D9B5A8D4B40 2017-07-11  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2017-12-01  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2020-11-17  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2017-04-03  bill-auger <bill-auger@peers.community>
uid           [ unknown] [jpeg image of size 6017]
sig 3        25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig   L      FDB5B77C70031E64 2020-10-10  Pacman Keyring Master Key <pacman@localhost>
sig 3        25DB7D9B5A8D4B40 2017-12-01  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2020-11-17  bill-auger <bill-auger@peers.community>
sig 3        25DB7D9B5A8D4B40 2017-07-06  bill-auger <bill-auger@peers.community>
sub   rsa2048 2016-11-30 [SEA] [expires: 2025-11-16]
sig          25DB7D9B5A8D4B40 2018-11-20  bill-auger <bill-auger@peers.community>
sig          25DB7D9B5A8D4B40 2020-11-17  bill-auger <bill-auger@peers.community>
sub   rsa2048 2017-10-16 [S] [expires: 2021-03-24]
sig          25DB7D9B5A8D4B40 2020-07-09  bill-auger <bill-auger@peers.community>
sig          25DB7D9B5A8D4B40 2020-11-24  bill-auger <bill-auger@peers.community>
```
Then I checked with
```bash
[phunc20@tako-x60 ~]$ sudo pacman-key --refresh-keys
gpg: refreshing 151 keys from hkps://hkps.pool.sks-keyservers.net
gpg: keyserver refresh failed: General error
==> ERROR: A specified local key could not be updated from a keyserver.
```



### Ref.
- [https://www.parabola.nu/people/hackers/](https://www.parabola.nu/people/hackers/)
- [https://wiki.archlinux.org/index.php/Pacman/Package_signing#Adding_unofficial_keys](https://wiki.archlinux.org/index.php/Pacman/Package_signing#Adding_unofficial_keys)


