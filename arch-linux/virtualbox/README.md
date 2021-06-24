

## `vboxdrv`

In arch wiki, it mentioned that one has to run `modprobe vboxdrv` to load the mandatory module `vboxdrv`.

If one followed the wiki and stopped at some point and then resumed, forgetting whether they have already `modprobe vboxdrv`, they can check as follows.

```bash
~/downloads ❯❯❯ lsmod | grep vbox
vboxnetflt             32768  0
vboxnetadp             28672  0
vboxdrv               528384  2 vboxnetadp,vboxnetflt
```

## USB
`sudo usermod -aG vboxusers phunc20` to add your user (here, `phunc20`) to `vboxusers` user group.
```bash
~ ❯❯❯ grep vbox /etc/group
vboxusers:x:108
```

## Creating New Virtual Machines
You might encounter the following situations

- Situation: When trying to create a new VM, only 32-bit options are available.
  - Solution: Entering your machine's BIOS (which requires rebooting your computer and then press `F1` or another similar key). Once inside your BIOS, find the section on `Virtualization` and enable the options. The exact location of the section on `Virtualization` might depend on your machine. For example,
    - Thinkpad X200: `Config > CPU`
    - Thinkpad T420: `Security > Virtualization`



## Troubleshoot
- `.ova` file? How to create a VM using such a file?
  - It turns out that this is a simplified way to create a VM -- You just need to import the `.ova` file!
  - More precisely, follow the following steps
    - Go to `File > Import Appliance`
    - Choose your `.ova` file and then just follow the virtualbox's instruction and you'll be soon good to go.
- `Implementation of the USB 2.0 controller not found`
  - This is because we still need to install the [Oracle Extension Pack](https://www.virtualbox.org/wiki/Downloads). To install it, download it in the specified link.  Once downloaded, just run the following command to install:
    ```bash
    sudo VBoxManage extpack install ~/downloads/Oracle_VM_VirtualBox_Extension_Pack-6.1.22.vbox-extpack
    ```
- When I successfully installed kali linux's VM, it asked for username and password. What do I do?
  - For kali linux, it has a default set of username and password, which is
    - username: `kali`
    - password: `kali`
    - cf. <https://www.kali.org/docs/introduction/default-credentials/#:~:text=Any%20default%20operating%20system%20credentials,Password%3A%20kali>
