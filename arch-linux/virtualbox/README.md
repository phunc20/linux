

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


