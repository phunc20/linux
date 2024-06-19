https://pkgbuild.com/~eschwartz/repo/
https://www.reddit.com/r/archlinux/comments/ep5mwj/system_update_without_zstd_support/
https://lists.archlinux.org/pipermail/arch-announce/2020-January/000400.html

### <code>zstd</code> and <code>xz</code> problem
- <b>32-bit</b>: [https://pkgbuild.com/~eschwartz/repo/i686-extracted/](https://pkgbuild.com/~eschwartz/repo/i686-extracted/)
- <b>64-bit</b>: [https://pkgbuild.com/~eschwartz/repo/x86_64-extracted/](https://pkgbuild.com/~eschwartz/repo/x86_64-extracted/)

Once you've downloaded the binary file named <code>pacman-static</code>,
- make it executable by <code>chmod a+x pacman-static</code>
- run it instead of the command <code>pacman</code>
    - i.e. every time when you are asked by [https://wiki.parabola.nu/Migration_from_Arch](https://wiki.parabola.nu/Migration_from_Arch) to type sth like <code>pacman -Syy</code>, instead you'll type <code>./pacman-static -Syy</code> (assuming that <code>pacman-static</code> is under your <code>pwd</code>)
