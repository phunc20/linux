## Turn on/off Wifi
- `nmcli radio wifi on`
- `nmcli radio wifi off`

## Stored Password
`NetworkManager` stores its password at **`/etc/NetworkManager/system-connections/`**.
For example, if the concerned wifi SSID is `abcCafe`, then, after you've successfully connected it,
there should exist a file at `/etc/NetworkManager/system-connections/abcCafe.nmconnection`, which
you can `grep` as follows:
```bash
/etc/NetworkManager/system-connections ❯❯❯ grep ^psk abcCafe.nmconnection
psk=12345678
```

**N.B.** Normally, the folder `/etc/NetworkManager/system-connections/` is of user `root` and of group `root`, so as all the files beneath it. If your user belongs to a group, say, `wheel` group, and you would like to
allow them access to the folder and its subfiles, you may **`sudo chgrp -R wheel /etc/NetworkManager/system-connections/`**, where `-R` means **recursively**. In addition, since by default the folder's group authority is only `---`, it might interest you to **`sudo chmod g+rwx /etc/NetworkManager/system-connections/`**.


## Misc.
- `nmcli device show`
- `nmcli connection show`


## `2&>1`
```bash
~/.../18S191/homework/homework3 ❯❯❯ nmcli device wifi connect "NGUYENDO" || echo 0
Error: Connection activation failed: (7) Secrets were required, but not provided.
~/.../18S191/homework/homework3 ❯❯❯ nmcli device wifi connect "NGUYENDO" 2&>1 || echo 0
0
~/.../18S191/homework/homework3 ❯❯❯
```

nmcli device wifi connect "TrungTin1989" 2>/dev/null || echo fail
