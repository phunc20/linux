# How to Connect to A Wifi on OpenBSD?
01. <code><b>/etc/hostname.if</b></code>, e.g.
    - <code><b>/etc/hostname.em0</b></code>
    - <code><b>/etc/hostname.iwn0</b></code>
02. The command <code><b>ifconfig</b></code>


## Using <code>ifconfig</code> to
- check all interfaces: <code><b>ifconfig</b></code>
- check one particular interface, e.g. <code>iwn0</code>: <code><b>ifconfig iwn0</b></code>
- check the list of neighboring wifis: <code><b>ifconfig iwn0 scan</b></code>
- Connect to one particular wifi: <code><b>ifconfig \<if\> nwid \<ID\> wpakey \<PASSPHRASE\></b></code>

<b>Ref.</b> [https://unix.stackexchange.com/questions/550413/how-to-connect-to-wifi-in-openbsd](https://unix.stackexchange.com/questions/550413/how-to-connect-to-wifi-in-openbsd)

