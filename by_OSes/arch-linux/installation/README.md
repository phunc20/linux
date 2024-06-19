## UEFI

`# pacman -Sy archlinux-keyring` to update the keyring if cannot `# pacstrap`

`# pacman -S grub efibootmgr`
`# grub-install --target=x86_64-efi --efi-direcotry=/boot/ --bootloader-id=GRUB`
grub-mkconfig -o /boot/grub/grub.cfg
