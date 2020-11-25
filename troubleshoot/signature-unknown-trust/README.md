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



```bash
[phunc20@tako-x60 ~]$ sudo pacman-key --init
# still unable to pacman -S texlive-bin at this stage
[phunc20@tako-x60 ~]$ sudo pacman-key --populate
...
==> Importing owner trust values...
==> Disabling revoked keys in keyring...
  -> Disabling key 8F76BEEA0289F9E1D3E229C05F946DED983D4366...
  -> Disabling key 63F395DE2D6398BBE458F281F2DBB4931985A992...
  -> Disabling key 50F33E2E5B0C3D900424ABE89BDCF497A4BBCC7F...
  -> Disabling key 27FFC4769E19F096D41D9265A04F9397CDFD6BB0...
  -> Disabling key 39F880E50E49A4D11341E8F939E4F17F295AFBF4...
  -> Disabling key 8840BD07FC24CB7CE394A07CCF7037A4F27FB7DA...
  -> Disabling key 5559BC1A32B8F76B3FCCD9555FA5E5544F010D48...
  -> Disabling key 0B20CA1931F5DA3A70D0F8D2EA6836E1AB441196...
  -> Disabling key 07DFD3A0BC213FA12EDC217559B3122E2FA915EC...
  -> Disabling key 4FCF887689C41B09506BE8D5F3E1D5C5D30DB0AD...
  -> Disabling key 5A2257D19FF7E1E0E415968CE62F853100F0D0F0...
  -> Disabling key D921CABED130A5690EF1896E81AF739EC0711BF1...
  -> Disabling key 7FA647CD89891DEDC060287BB9113D1ED21E1A55...
  -> Disabling key BC1FBE4D2826A0B51E47ED62E2539214C6C11350...
  -> Disabling key 4A8B17E20B88ACA61860009B5CED81B7C2E5C0D2...
  -> Disabling key 2FF1E976D6EB2E954A87DC14443904EC9EC51A8A...
  -> Disabling key 5696C003B0854206450C8E5BE613C09CB4440678...
  -> Disabling key 684148BB25B49E986A4944C55184252D824B18E8...
  -> Disabling key 8CF934E339CAD8ABF342E822E711306E3C4F88BC...
  -> Disabling key F5A361A3A13554B85E57DDDAAF7EF7873CFD4BB6...
  -> Disabling key 5E7585ADFF106BFFBBA319DC654B877A0864983E...
  -> Disabling key 65EEFE022108E2B708CBFCF7F9E712E59AF5F22A...
  -> Disabling key 40440DC037C05620984379A6761FAD69BA06C6A9...
  -> Disabling key 34C5D94FE7E7913E86DC427E7FB1A3800C84C0A5...
  -> Disabling key 81D7F8241DB38BC759C80FCE3A726C6170E80477...
  -> Disabling key 7C98C4C3DE926168DC46FBAA3D06644243BF68D3...
  -> Disabling key C3A8190912128B5A2E96C6023ED6490AEF932C8A...
  -> Disabling key E7210A59715F6940CF9A4E36A001876699AD6E84...
  -> Disabling key 5357F3B111688D88C1D88119FCF2CB179205AC90...
  -> Disabling key 4D913AECD81726D9A6C74F0ADA6426DD215B37AD...
  -> Disabling key FB871F0131FEA4FB5A9192B4C8880A6406361833...
  -> Disabling key 66BD74A036D522F51DD70A3C7F2A16726521E06D...
  -> Disabling key B1F2C889CB2CCB2ADA36D963097D629E437520BD...
  -> Disabling key 9515D8A8EAB88E49BB65EDBCE6B456CAF15447D5...
  -> Disabling key 76B4192E902C0A52642C63C273B8ED52F1D357C1...
  -> Disabling key 40776A5221EF5AD468A4906D42A1DB15EC133BAD...
  -> Disabling key D4DE5ABDE2A7287644EAC7E36D1A9E70E19DAA50...
  -> Disabling key 44D4A033AC140143927397D47EFD567D4C7EA887...
==> Updating trust database...
gpg: next trustdb check due at 2020-12-31
```
Still failed.


### Ref.
- [https://www.parabola.nu/people/hackers/](https://www.parabola.nu/people/hackers/)
- [https://wiki.archlinux.org/index.php/Pacman/Package_signing#Adding_unofficial_keys](https://wiki.archlinux.org/index.php/Pacman/Package_signing#Adding_unofficial_keys)


