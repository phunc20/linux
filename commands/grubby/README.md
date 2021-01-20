## This `grubby` command
by the look, we know it has to do w/ `grub`. This is a Fedora-specific command, and may not exist on other linux distros.

It concerns which one of the kernel images on your machine is being booted into.
- To see the currently defaulted kernel, do **`sudo grubby --default-kernel`**
- To change the default to another image, do **`sudo grubby --set-default /boot/vmlinuz-5.0.9-301.fc30.x86_64`**
  - The available kernel images on the machine are located at `/boot/` with names beginning with `vmlinuz`

For example,
```bash

```

