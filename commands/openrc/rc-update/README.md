<pre>
rc-update del &lt;serviceName&gt; &lt;runLevel&gt;
rc-update add &lt;serviceName&gt; &lt;runLevel&gt;
</pre>
e.g.
<pre>
rc-update del NetworkManager default
rc-update add NetworkManager default
</pre>


## Delete a service
Here, for example, I have mistakenly added both `connman` and `NetworkManager` to `openrc`. I wanted to delete `connman`.
```bash
leif@CenterLap-x1carbon ~ $ rc-update --help
Usage: rc-update [options] add <service> [<runlevel>...]
   or: rc-update [options] del <service> [<runlevel>...]
   or: rc-update [options] [show [<runlevel>...]]

Options: [ asuChqVv ]
  -a, --all                         Process all runlevels
  -s, --stack                       Stack a runlevel instead of a service
  -u, --update                      Force an update of the dependency tree
  -h, --help                        Display this help output
  -C, --nocolor                     Disable color output
  -V, --version                     Display software version
  -v, --verbose                     Run verbosely
  -q, --quiet                       Run quietly (repeat to suppress errors)
leif@CenterLap-x1carbon ~ $ rc-update show
       NetworkManager |      default
                acpid |      default
            alsasound | boot
               binfmt | boot
             bootmisc | boot
              cgroups |                                 sysinit
              connman |      default
          consolefont | boot
               cronie |      default
                devfs |                                 sysinit
                dmesg |                                 sysinit
               docker |      default
                 fsck | boot
             hostname | boot
              hwclock | boot
              keymaps | boot
            killprocs |                        shutdown
    kmod-static-nodes |                                 sysinit
                local |      default nonetwork
           localmount | boot
             loopback | boot
              modules | boot
             mount-ro |                        shutdown
                 mtab | boot
             netmount |      default
     opentmpfiles-dev |                                 sysinit
   opentmpfiles-setup | boot
               procfs | boot
                 root | boot
         save-keymaps | boot
    save-termencoding | boot
            savecache |                        shutdown
                 swap | boot
               sysctl | boot
                sysfs |                                 sysinit
             sysklogd |      default
         termencoding | boot
                 udev |                                 sysinit
         udev-trigger |                                 sysinit
              urandom | boot
leif@CenterLap-x1carbon ~ $ rc-status
Runlevel: default
 NetworkManager                                                                                                          [  started  ]
 sysklogd                                                                                                                [  started  ]
 cronie                                                                                                                  [  started  ]
 connman                                                                                                                 [  stopped  ]
 netmount                                                                                                                [  stopped  ]
 docker                                                                                                                  [  started  ]
 acpid                                                                                                                   [  started  ]
 local                                                                                                                   [  started  ]
Dynamic Runlevel: hotplugged
Dynamic Runlevel: needed/wanted
 dbus                                                                                                                    [  started  ]
Dynamic Runlevel: manual
leif@CenterLap-x1carbon ~ $ #rc-update del <service> [<runlevel>]
leif@CenterLap-x1carbon ~ $ rc-update del connman
 * rc-update: failed to remove service `connman' from runlevel `default': Permission denied
leif@CenterLap-x1carbon ~ $ sudo rc-update del connman
 * service connman removed from runlevel default
leif@CenterLap-x1carbon ~ $ rc-status
Runlevel: default
 NetworkManager                                                                                                          [  started  ]
 sysklogd                                                                                                                [  started  ]
 cronie                                                                                                                  [  started  ]
 netmount                                                                                                                [  stopped  ]
 docker                                                                                                                  [  started  ]
 acpid                                                                                                                   [  started  ]
 local                                                                                                                   [  started  ]
Dynamic Runlevel: hotplugged
Dynamic Runlevel: needed/wanted
 dbus                                                                                                                    [  started  ]
Dynamic Runlevel: manual
leif@CenterLap-x1carbon ~ $ sudo rc-update del netmount default
 * service netmount removed from runlevel default
leif@CenterLap-x1carbon ~ $ rc-status
Runlevel: default
 NetworkManager                                                                                                          [  started  ]
 sysklogd                                                                                                                [  started  ]
 cronie                                                                                                                  [  started  ]
 docker                                                                                                                  [  started  ]
 acpid                                                                                                                   [  started  ]
 local                                                                                                                   [  started  ]
Dynamic Runlevel: hotplugged
Dynamic Runlevel: needed/wanted
 dbus                                                                                                                    [  started  ]
Dynamic Runlevel: manual
leif@CenterLap-x1carbon ~ $

```
