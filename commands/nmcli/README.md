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






