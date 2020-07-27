# Diff btw <code>ifconfig</code> in OpenBSD and in Linux
Note that although both are called <code>ifconfig</code>, a great part of this command in OpenBSD
and in Linux is quite different, e.g.
- <code>ifconfig</code> can be used to scan available wifi and to connect to a particular wifi,
while in Linux <code>ifconfig</code> does not have all those utilities.

<pre>
suod ifconfig iwn0 up
suod ifconfig iwn0 down
suod ifconfig iwn0 scan
</pre>



