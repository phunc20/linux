## Use `rc-status` to see if a service is already running
For example, the command history below shows
- before
- and after the `acpid` service is being added to `openrc`

```bash
leif@CenterLap-x1carbon ~ $ rc-status
Runlevel: default
 NetworkManager                    [  started  ]
 sysklogd                          [  started  ]
 cronie                            [  started  ]
 connman                           [  started  ]
 netmount                          [  started  ]
 docker                            [  started  ]
 local                             [  started  ]
Dynamic Runlevel: hotplugged
Dynamic Runlevel: needed/wanted
 dbus                              [  started  ]
Dynamic Runlevel: manual
leif@CenterLap-x1carbon ~ $ rc-update add acpid default
 * rc-update: failed to add service `acpid' to runlevel `default': Permission denied
leif@CenterLap-x1carbon ~ $ sudo rc-update add acpid default
 * service acpid added to runlevel default
leif@CenterLap-x1carbon ~ $ rc-status
Runlevel: default
 NetworkManager                    [  started  ]
 sysklogd                          [  started  ]
 cronie                            [  started  ]
 connman                           [  started  ]
 netmount                          [  started  ]
 docker                            [  started  ]
 acpid                             [  stopped  ]
 local                             [  started  ]
Dynamic Runlevel: hotplugged
Dynamic Runlevel: needed/wanted
 dbus                              [  started  ]
Dynamic Runlevel: manual
leif@CenterLap-x1carbon ~ $
```
