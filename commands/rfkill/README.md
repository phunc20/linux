

- <code><b>rfkill list</b></code>
- <code><b>sudo rfkill unblock wlan</b></code>

<pre>
$ ip -br a
lo               UNKNOWN        127.0.0.1/8 ::1/128
dummy0           DOWN
enp0s31f6        DOWN
sit0@NONE        DOWN
wlp2s0           DOWN
docker0          DOWN           172.17.0.1/16
$ rfkill list
0: tpacpi_bluetooth_sw: Bluetooth
        Soft blocked: yes
        Hard blocked: no
1: phy0: Wireless LAN
        Soft blocked: yes
        Hard blocked: no
$ rfkill list all
0: tpacpi_bluetooth_sw: Bluetooth
        Soft blocked: yes
        Hard blocked: no
1: phy0: Wireless LAN
        Soft blocked: yes
        Hard blocked: no
$ rfkill unblock wlp2s0
rfkill: invalid identifier: wlp2s0
$ sudo rfkill unblock wlp2s0
rfkill: invalid identifier: wlp2s0
$ sudo rfkill unblock wlan
$ rfkill list all
0: tpacpi_bluetooth_sw: Bluetooth
        Soft blocked: yes
        Hard blocked: no
1: phy0: Wireless LAN
</pre>

```bash
leif@CenterLap-x1carbon ~ $ rfkill
ID TYPE      DEVICE                 SOFT      HARD
 0 bluetooth tpacpi_bluetooth_sw blocked unblocked
 1 wlan      phy0                blocked unblocked
leif@CenterLap-x1carbon ~ $ man rfkill
leif@CenterLap-x1carbon ~ $ rfkill unblock wlan
rfkill: cannot open /dev/rfkill: Permission denied
leif@CenterLap-x1carbon ~ $ sudo rfkill unblock wlan
leif@CenterLap-x1carbon ~ $ rfkill
ID TYPE      DEVICE                   SOFT      HARD
 0 bluetooth tpacpi_bluetooth_sw   blocked unblocked
 1 wlan      phy0                unblocked unblocked
leif@CenterLap-x1carbon ~ $
```

