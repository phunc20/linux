## How do we disable Ubuntu 18.04's desktop manager?
Note that simply doing **`systemctl disable|stop gdm`** will **not suffice**.
Instead, one has to go thru the following (with `multi-user.target` in `systemd`)


## `systemctl isolate|enable|set-default multi-user.target`
Two targets concern the enabling/disabling desktop manager in Ubuntu 18.04. They are
- **`multi-user.target`**: This, when set as default, will boot to vconsole
- **`graphical.target`**: This, when set as default (*and is set as default*), will boot to the normal, Ubuntu's desktop manager

```bash
ec2-user@ip-54-147-126-214: ~$ systemctl status multi-user.target
● multi-user.target - Multi-User System
   Loaded: loaded (/lib/systemd/system/multi-user.target; static; vendor preset: enabled)
   Active: active since Fri 2020-11-20 13:06:07 +07; 24s ago
     Docs: man:systemd.special(7)

Nov 20 13:06:07 phunc20-AERO-15XV8 systemd[1]: Reached target Multi-User System.
```

Btw, the `systemctl status` command when followed by a string will by default suppose that given string is a **service**.
```bash
ec2-user@ip-54-147-126-214: ~$ systemctl status multi-user
Unit multi-user.service could not be found.
```

`multi-user.target` being active doesn't mean that `graphical.target` isn't.
```bash
ec2-user@ip-54-147-126-214: ~$ systemctl status graphical.target
● graphical.target - Graphical Interface
   Loaded: loaded (/lib/systemd/system/graphical.target; indirect; vendor preset: enabled)
   Active: active since Fri 2020-11-20 13:06:07 +07; 57min ago
     Docs: man:systemd.special(7)

Nov 20 13:06:07 phunc20-AERO-15XV8 systemd[1]: Reached target Graphical Interface.
```

If you are a user coming from and familiar with the old Init system, the following is a correspondance table for
**the runlevel in Init** and **the target in systemd**.

|Runlevel|Target
|--------|------
| `0` | `poweroff.target`
| `1` | `rescue.target`
| `2,3,4` | `multi-user.target`
| `5` | `graphical.target`
| `6` | `reboot.target`

If you boot into the system by `graphical.target` and that you want to turn off the desktop manager, you can do
```bash
systemctl isolate multi-user.target
# essentially, `isolate` means "stop one unit and stop all the others"
# cf. more at `systemctl --help`
```

Now, to deactivate or disable the desktop manager, one simply
```bash
sudo systemctl set-default multi-user.target
```
Then next time you reboot, you will find yourself dealing with vconsole, instead of desktop manager.

**Rmk.** One might occasionally need to add `sudo systemctl enable multi-user.target` to the `set-default` command above, if that alone doesn't suffice.


## Behind the scene
This part is just an illustration. Do not try to `rm` and `ln` yourself the targets mentioned below.

"_The system's default target is_ `/etc/systemd/system/default.target`", said [Eric Ma]()
```bash
ec2-user@ip-54-147-126-214: ~$ ll /etc/systemd/system/default.target
lrwxrwxrwx 1 root root 36 Nov 20 13:05 /etc/systemd/system/default.target -> /lib/systemd/system/graphical.target
ec2-user@ip-54-147-126-214: ~$ ll /lib/systemd/system/                         
Display all 345 possibilities? (y or n)                                 
ec2-user@ip-54-147-126-214: ~$ ll /lib/systemd/system/*.target           
-rw-r--r-- 1 root root  49 Dec 15  2017 /lib/systemd/system/spice-vdagentd.target    
-rw-r--r-- 1 root root 457 Jan 28  2018 /lib/systemd/system/umount.target        
-rw-r--r-- 1 root root 435 Jan 28  2018 /lib/systemd/system/time-sync.target         
-rw-r--r-- 1 root root 445 Jan 28  2018 /lib/systemd/system/timers.target   
-rw-r--r-- 1 root root 592 Jan 28  2018 /lib/systemd/system/system-update.target
-rw-r--r-- 1 root root 558 Jan 28  2018 /lib/systemd/system/sysinit.target  
-rw-r--r-- 1 root root 393 Jan 28  2018 /lib/systemd/system/swap.target
-rw-r--r-- 1 root root 503 Jan 28  2018 /lib/systemd/system/suspend.target  
-rw-r--r-- 1 root root 420 Jan 28  2018 /lib/systemd/system/sound.target
-rw-r--r-- 1 root root 396 Jan 28  2018 /lib/systemd/system/sockets.target  
-rw-r--r-- 1 root root 420 Jan 28  2018 /lib/systemd/system/smartcard.target
-rw-r--r-- 1 root root 449 Jan 28  2018 /lib/systemd/system/slices.target
-rw-r--r-- 1 root root 460 Jan 28  2018 /lib/systemd/system/sleep.target    
-rw-r--r-- 1 root root 402 Jan 28  2018 /lib/systemd/system/sigpwr.target    
-rw-r--r-- 1 root root 442 Jan 28  2018 /lib/systemd/system/shutdown.target      
-rw-r--r-- 1 root root 540 Jan 28  2018 /lib/systemd/system/rpcbind.target  
-rw-r--r-- 1 root root 492 Jan 28  2018 /lib/systemd/system/rescue.target
-rw-r--r-- 1 root root 522 Jan 28  2018 /lib/systemd/system/remote-fs.target        
-rw-r--r-- 1 root root 436 Jan 28  2018 /lib/systemd/system/remote-fs-pre.target         
-rw-r--r-- 1 root root 549 Jan 28  2018 /lib/systemd/system/remote-cryptsetup.target         
-rw-r--r-- 1 root root 583 Jan 28  2018 /lib/systemd/system/reboot.target                       
-rw-r--r-- 1 root root 417 Jan 28  2018 /lib/systemd/system/printer.target                       
-rw-r--r-- 1 root root 592 Jan 28  2018 /lib/systemd/system/poweroff.target                      
-rw-r--r-- 1 root root 394 Jan 28  2018 /lib/systemd/system/paths.target                         
-rw-r--r-- 1 root root 513 Jan 28  2018 /lib/systemd/system/nss-user-lookup.target           
-rw-r--r-- 1 root root 554 Jan 28  2018 /lib/systemd/system/nss-lookup.target                  
-rw-r--r-- 1 root root 521 Jan 28  2018 /lib/systemd/system/network.target                    
-rw-r--r-- 1 root root 502 Jan 28  2018 /lib/systemd/system/network-pre.target                  
-rw-r--r-- 1 root root 505 Jan 28  2018 /lib/systemd/system/network-online.target
-rw-r--r-- 1 root root 532 Jan 28  2018 /lib/systemd/system/multi-user.target
-rw-r--r-- 1 root root 547 Jan 28  2018 /lib/systemd/system/local-fs.target
-rw-r--r-- 1 root root 435 Jan 28  2018 /lib/systemd/system/local-fs-pre.target
-rw-r--r-- 1 root root 541 Jan 28  2018 /lib/systemd/system/kexec.target
-rw-r--r-- 1 root root 763 Jan 28  2018 /lib/systemd/system/initrd.target
-rw-r--r-- 1 root root 754 Jan 28  2018 /lib/systemd/system/initrd-switch-root.target
-rw-r--r-- 1 root root 566 Jan 28  2018 /lib/systemd/system/initrd-root-fs.target
-rw-r--r-- 1 root root 561 Jan 28  2018 /lib/systemd/system/initrd-root-device.target
-rw-r--r-- 1 root root 593 Jan 28  2018 /lib/systemd/system/initrd-fs.target
-rw-r--r-- 1 root root 530 Jan 28  2018 /lib/systemd/system/hybrid-sleep.target
-rw-r--r-- 1 root root 509 Jan 28  2018 /lib/systemd/system/hibernate.target
-rw-r--r-- 1 root root 527 Jan 28  2018 /lib/systemd/system/halt.target
-rw-r--r-- 1 root root 598 Jan 28  2018 /lib/systemd/system/graphical.target
-rw-r--r-- 1 root root 500 Jan 28  2018 /lib/systemd/system/getty.target
-rw-r--r-- 1 root root 506 Jan 28  2018 /lib/systemd/system/getty-pre.target
-rw-r--r-- 1 root root 480 Jan 28  2018 /lib/systemd/system/final.target
-rw-r--r-- 1 root root 541 Jan 28  2018 /lib/systemd/system/exit.target
-rw-r--r-- 1 root root 471 Jan 28  2018 /lib/systemd/system/emergency.target
-rw-r--r-- 1 root root 412 Jan 28  2018 /lib/systemd/system/cryptsetup.target
-rw-r--r-- 1 root root 465 Jan 28  2018 /lib/systemd/system/cryptsetup-pre.target
-rw-r--r-- 1 root root 419 Jan 28  2018 /lib/systemd/system/bluetooth.target
-rw-r--r-- 1 root root 919 Jan 28  2018 /lib/systemd/system/basic.target
-rw-r--r-- 1 root root 172 Oct 15  2018 /lib/systemd/system/friendly-recovery.target
-rw-r--r-- 1 root root 554 May  3  2020 /lib/systemd/system/suspend-then-hibernate.target
lrwxrwxrwx 1 root root  13 May  3  2020 /lib/systemd/system/runlevel6.target -> reboot.target
lrwxrwxrwx 1 root root  16 May  3  2020 /lib/systemd/system/runlevel5.target -> graphical.target
lrwxrwxrwx 1 root root  17 May  3  2020 /lib/systemd/system/runlevel4.target -> multi-user.target
lrwxrwxrwx 1 root root  17 May  3  2020 /lib/systemd/system/runlevel3.target -> multi-user.target
lrwxrwxrwx 1 root root  17 May  3  2020 /lib/systemd/system/runlevel2.target -> multi-user.target
lrwxrwxrwx 1 root root  13 May  3  2020 /lib/systemd/system/runlevel1.target -> rescue.target
lrwxrwxrwx 1 root root  15 May  3  2020 /lib/systemd/system/runlevel0.target -> poweroff.target
lrwxrwxrwx 1 root root  16 May  3  2020 /lib/systemd/system/default.target -> graphical.target
lrwxrwxrwx 1 root root  13 May  3  2020 /lib/systemd/system/ctrl-alt-del.target -> reboot.target
ec2-user@ip-54-147-126-214: ~$
```






## How do I activate desktop manager when the target is set to `multi-user.target`?



## Misc.

```bash
ec2-user@ip-54-147-126-214: ~$ systemctl status getty
Unit getty.service could not be found.
ec2-user@ip-54-147-126-214: ~$ systemctl status getty@tty1
● getty@tty1.service - Getty on tty1
   Loaded: loaded (/lib/systemd/system/getty@.service; enabled; vendor preset: enabled)
   Active: inactive (dead)
     Docs: man:agetty(8)
           man:systemd-getty-generator(8)
           http://0pointer.de/blog/projects/serial-console.html
ec2-user@ip-54-147-126-214: ~$ systemctl status getty@tty6
● getty@tty6.service - Getty on tty6
   Loaded: loaded (/lib/systemd/system/getty@.service; enabled; vendor preset: enabled)
   Active: inactive (dead)
     Docs: man:agetty(8)
           man:systemd-getty-generator(8)
           http://0pointer.de/blog/projects/serial-console.html
ec2-user@ip-54-147-126-214: ~$ systemctl status getty@tty2
● getty@tty2.service - Getty on tty2
   Loaded: loaded (/lib/systemd/system/getty@.service; enabled; vendor preset: enabled)
   Active: inactive (dead)
     Docs: man:agetty(8)
           man:systemd-getty-generator(8)
           http://0pointer.de/blog/projects/serial-console.html
ec2-user@ip-54-147-126-214: ~$ systemctl status getty@tty3
● getty@tty3.service - Getty on tty3
   Loaded: loaded (/lib/systemd/system/getty@.service; enabled; vendor preset: enabled)
   Active: inactive (dead)
     Docs: man:agetty(8)
           man:systemd-getty-generator(8)
           http://0pointer.de/blog/projects/serial-console.html
```
