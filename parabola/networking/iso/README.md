### It may happen
when you try to install parabola using an iso image that your <b>ethernet interface does show an ip address</b> when you do <code><b>ip -br a</b></code>, but you fail to <code><b>ping</b></code> any webpage.

There is [this solution](), which namely suggested (among 2 methods) that we can do:
01. <code><b>systemctl status systemd-resolved.service</b></code>, which should displays <code><b>inactive</b></code>
02. So we activate it by <code><b>systemctl start systemd-resolved.service</b></code>
03. Use <code><b>systemctl status systemd-resolved.service</b></code> to check again if the service is now <code><b>active</b></code>
04. Once you verified it's <code><b>active</b></code>, you can <code><b>ping</b></code> any website now.


