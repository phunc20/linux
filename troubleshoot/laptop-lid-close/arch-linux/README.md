
etc/systemd/logind.conf


~ ❯❯❯ sudo nvim /etc/systemd/logind.conf
~ ❯❯❯ man logind.conf
~ ❯❯❯

/etc/systemd/logind.conf
~ ❯❯❯ sudo systemctl kill -s HUP systemd-logind

```
~ ❯❯❯ sudo systemctl status systemd-logind
● systemd-logind.service - User Login Management
     Loaded: loaded (/usr/lib/systemd/system/systemd-logind.service; static)
     Active: active (running) since Thu 2020-12-24 15:34:52 +07; 23h ago
       Docs: man:sd-login(3)
             man:systemd-logind.service(8)
             man:logind.conf(5)
             man:org.freedesktop.login1(5)
   Main PID: 352 (systemd-logind)
     Status: "Processing requests..."
      Tasks: 1 (limit: 9409)
     Memory: 1.5M
     CGroup: /system.slice/systemd-logind.service
             └─352 /usr/lib/systemd/systemd-logind

Dec 25 14:55:51 handshake-t400 systemd-logind[352]: Lid closed.
Dec 25 14:56:08 handshake-t400 systemd-logind[352]: Lid opened.
Dec 25 14:56:16 handshake-t400 systemd-logind[352]: Lid closed.
Dec 25 14:56:16 handshake-t400 systemd-logind[352]: Suspending...
Dec 25 14:56:35 handshake-t400 systemd-logind[352]: Lid opened.
Dec 25 14:56:36 handshake-t400 systemd-logind[352]: Operation 'sleep' finished.
Dec 25 14:57:08 handshake-t400 systemd-logind[352]: Lid closed.
Dec 25 14:57:08 handshake-t400 systemd-logind[352]: Suspending...
Dec 25 14:57:44 handshake-t400 systemd-logind[352]: Lid opened.
Dec 25 14:57:44 handshake-t400 systemd-logind[352]: Operation 'sleep' finished.
```
