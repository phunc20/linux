# Use <code>dhclient</code> NOT <code>dhcpcd</code>
along with <code>NetworkManager</code>, as suggested by gentoo's official webpage.

<pre>
$ sudo gpasswd -a <username> plugdev
$ for x in /etc/runlevels/default/net.* ; do rc-update del $(basename $x) default; rc-service --ifstarted $(basename $x) stop; done
$ sudo rc-update del dhcpcd default
$ sudo rc-service NetworkManager start
$ sudo rc-update add NetworkManager default
</pre>

From this point on, you should be able to use <code>NetworkManager</code>'s commands like
<pre>
# To scan for available wifi
nmcli device wifi
# To connect to one
nmcli device wifi connect &lt;SSID&gt; password &lt;password&gt;
</pre>


