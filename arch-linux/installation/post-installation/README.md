## Bigger Terminal Font
```bash
# pacman -S terminus-font
```
Then create and edit the file
```
/etc/vconsole.conf
----
FONT=ter-128b
```


## Add non-root user(s)
```bash
# useradd -m -g wheel phunc20
# ls /home
lost+found phunc20
# passwd phunc20
```
Then add them to sudoers: In the file `/etc/sudoers`, uncomment the following line
```
# %wheel ALL=(ALL:ALL) NOPASSWD: ALL
```


## Packages
```bash
# For X
sudo pacman -S xorg-server xorg-xinit
# For bigger font on vconsole, i.e. tty1~tty6
sudo pacman -S terminus-font
# font in browsers, terminals, etc.
pacman -S noto-fonts
# For git
pacman -S git ssh-tools

```

Altogether
```bash
pacman -S terminus-font xorg-server xorg-xinit git ssh-tools xorg-xmodmap xorg-xrdb dunst ibus

```
