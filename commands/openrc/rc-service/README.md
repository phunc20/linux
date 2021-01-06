## How `rc-service` is used?
- list services: `rc-service -l`
- start and stop a service:
  - `rc-service <service> start`
  - `rc-service --ifstarted <service> stop`
  - e.g.
  ```
  rc-service NetworkManager stop
  rc-service NetworkManager start
  ```

## An example
```bash
leif@CenterLap-x1carbon ~ $ rc-status
Runlevel: default
 NetworkManager                                         [  started  ]
 sysklogd                                               [  started  ]
 cronie                                                 [  started  ]
 connman                                                [  started  ]
 netmount                                               [  started  ]
 docker                                                 [  started  ]
 acpid                                                  [  stopped  ]
 local                                                  [  started  ]
Dynamic Runlevel: hotplugged
Dynamic Runlevel: needed/wanted
 dbus                                                   [  started  ]
Dynamic Runlevel: manual
leif@CenterLap-x1carbon ~ $ sudo rc-service acpid start
 * Starting acpid ...                                                                                                           [ ok ]
leif@CenterLap-x1carbon ~ $ rc-status
Runlevel: default
 NetworkManager                                         [  started  ]
 sysklogd                                               [  started  ]
 cronie                                                 [  started  ]
 connman                                                [  started  ]
 netmount                                               [  started  ]
 docker                                                 [  started  ]
 acpid                                                  [  started  ]
 local                                                  [  started  ]
Dynamic Runlevel: hotplugged
Dynamic Runlevel: needed/wanted
 dbus                                                   [  started  ]
Dynamic Runlevel: manual
```
