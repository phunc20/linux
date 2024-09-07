# A Worked Example
I mostly followed this webpage <https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-18-04>  
with the following setting:
- A DigitalOcean droplet Ubuntu 18.04 server
- A Debian 12 (bookworm) client
- An Arch Linux CA machine


## The Only Problem
I successfully found myself with a different IP address by following
tightly to the aforementioned DigitalOcean webpage. (On a Linux terminal,
one can easily check their IP address by, say, `curl ifconfig.me`.
Cf. <https://ifconfig.me/> for more info.)

However, I still found myself unable to access some websites despite the
fact that I have equipped myself with the VPN server's IP.

It turned out to be sth called **DNS leak**, which the following website
could help use detect
<https://www.dnsleaktest.com/results.html>. (The user basically has to
press one of the "Standard test" and the "Extended test" buttons.)

But the DO webpage does instruct us to put these lines in `/etc/openvpn/server.conf`:
```
push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 208.67.222.222"
push "dhcp-option DNS 208.67.220.220"
```

So the problem boils down to: How to have our VPN client machine default to using
these `opendns.com`-provided DNS servers?

It turned out that this can be magically solved by simply installing
```bash
$ sudo apt install resolvconf
```

## Deeper Dive
- `resolvconf` is a command that is only accessible by root.
- After `resolvconf` is installed, the file `/etc/resolv.conf` will be
  replaced by a symbolic link, in Debian 12's case, to `/run/resolvconf/resolv.conf`,
  which is dynamically genereated by `resolvconf`.

man resolv.conf
systemctl status resolvconf.service

## Ref.
<https://wiki.debian.org/NetworkConfiguration>
