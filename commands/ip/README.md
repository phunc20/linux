
```bash
$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s25: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel state DOWN group default qlen 1000
    link/ether f0:de:f1:91:87:e1 brd ff:ff:ff:ff:ff:ff
3: wlp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 08:11:96:54:55:1c brd ff:ff:ff:ff:ff:ff
    inet 192.168.3.107/24 brd 192.168.3.255 scope global dynamic noprefixroute wlp3s0
       valid_lft 5950sec preferred_lft 5950sec
    inet6 fe80::1d9b:b755:3a10:c073/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
4: enp0s26u1u2u4: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel state DOWN group default qlen 1000
    link/ether f0:1e:34:14:79:dc brd ff:ff:ff:ff:ff:ff
5: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:42:4c:94:72:94 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
$ ip -br a
lo               UNKNOWN        127.0.0.1/8 ::1/128 
enp0s25          DOWN           
wlp3s0           UP             192.168.3.107/24 fe80::1d9b:b755:3a10:c073/64 
enp0s26u1u2u4    DOWN           
docker0          DOWN           172.17.0.1/16 
```


## Mac Spoofing
That is, change your mac address.

1. The original MAC address can be inspected by `ip link show <interface>`
1. Bring the network interface in use down by `sudo ip link set dev <interface> down`
1. Swap a MAC address of your choice in by `sudo ip link set dev <interface> address <new_mac_address>`
    - A normal MAC address contains 6 bytes, e.g. `00:1f:3a:09:65:e1`, in which
        - The first 3 bytes are related to the vendor of your machine.
          Better choose a valid vendor's first 3 bytes in order to fake through
          any services.
        - The last 3 bytes could be quite random.
1. Bring the network interface in use back up by `sudo ip link set dev <interface> up`
