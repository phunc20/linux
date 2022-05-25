## Add non-root user(s)
```bash
[root@pluie-t60 ~]# useradd -m -g wheel phunc20
[root@pluie-t60 ~]# ls /home
lost+found phunc20
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
