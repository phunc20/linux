1. `$ paccache -rk0`, i.e. remove and keep 0, probably equiv. to `$ sudo rm -rf /var/cache/pacman/pkg/*`
    - If the number of packages is small, you could also remove them one after another by `$ rm /var/cache/pacman/pkg/pkgname`
    - Cf.
        - <https://wiki.archlinux.org/title/Pacman/Package_signing#Troubleshooting>
        - <https://wiki.archlinux.org/title/Pacman#Cleaning_the_package_cache>
        - <https://wiki.archlinux.org/title/Pacman/Package_signing#Upgrade_system_regularly>
