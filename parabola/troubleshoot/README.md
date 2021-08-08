## Good Resources
- <https://wiki.parabola.nu/Pacman_troubleshooting>
  - This saved me once when `pacman` was complaining about corrupted keys or sth like that. The steps I followed can be summarized as follows:
    01. `SigLevel = Never` in `/etc/pacman.conf`
    02. `sudo rm -r /etc/pacman.d/gnupg` or `sudo mv /etc/pacman.d/gnupg ~/corbeille/`
    03. It says `sudo pacman -Syy gnupg archlinux-keyring archlinux32-keyring archlinuxarm-keyring parabola-keyring`, but I judge, since my machine is 32-bit, and did only **`sudo pacman -Syy gnupg archlinux32-keyring parabola-keyring`**
    04. `sudo pacman-key --init`
    05. Similar to step `03`, I did only **`sudo pacman-key --populate archlinux32 parabola`** instead of `sudo pacman-key --populate archlinux archlinux32 archlinuxarm parabola`
    06. `sudo pacman-key --refresh-keys`
    07. Revert back to `SigLevel = Required DatabaseOptional` in `/etc/pacman.conf`
    08. `sudo pacman -Syu`. This is the last step. Problems should be resolved by now.

