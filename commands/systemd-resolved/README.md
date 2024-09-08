## How to Change DNS Server in Arch Linux with `systemd-resolved`
Assuming one chooses `systemd-resolved`, which in Arch Linux is by default installed
along with `systemd`.

- Create and edit the file `sudo nvim /etc/systemd/resolved.conf.d/dns_servers.conf`
  ```bash
  ~ $ bat /etc/systemd/resolved.conf.d/dns_servers.conf
  ───────┬───────────────────────────────────────────────────────────
         │ File: /etc/systemd/resolved.conf.d/dns_servers.conf
  ───────┼───────────────────────────────────────────────────────────
     1   │ [Resolve]
     2   │ #DNS=8.8.8.8  # Google's DNS server
     3   │ DNS=8.8.8.8 8.8.4.4  # space separated list
     4   │ Domains=~.
  ───────┴───────────────────────────────────────────────────────────
  ~ $
  ```
  The DNS could be any free and public DNS server. The IP addresses
  of such are easily found on the Internet. E.g.

  | Provider | Primary DNS | Secondary DNS |
  | -------- | ----------- | ------------- |
  | Cloudflare | 1.1.1.1 | 1.0.0.1 |
  | Google | 8.8.8.8 | 8.8.4.4 |
  | Quad9 | 9.9.9.9 | 149.112.112.112 |
  | OpenDNS | 208.67.222.222 | 208.67.220.220 |
  | CleanBrowsing | 185.228.168.9 | 185.228.169.9 |
  | Comodo Secure DNS | 8.26.56.26 | 8.20.247.20 |
  | Control D | 76.76.2.0 | 76.76.10.0 |
  | AdGuard DNS | 94.140.14.14 | 94.140.15.15 |
  | Alternate DNS | 76.76.19.19 | 76.223.122.150 |

- Restart the service: `sudo systemctl restart systemd-resolved`
- (Optional) Test, e.g., on <https://www.dnsleaktest.com/>
