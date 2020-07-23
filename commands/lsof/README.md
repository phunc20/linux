# One of My Friends Recommended This Command to Me
when I opened two jupyter notebook servers, each having one jupyter-notebook instance running, and I would like to
know, when I inspect using the <code>top</code> command, which one of them was using 300% CPU (and which 80%).

<pre>
$ lsof -i :8888
COMMAND     PID    USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
chromium   4376 phunc20   40u  IPv6 533192      0t0  TCP localhost:45414->localhost:ddi-tcp-1 (ESTABLISHED)
jupyter-n 34490 phunc20    4u  IPv4 472056      0t0  TCP localhost:ddi-tcp-1 (LISTEN)
jupyter-n 34490 phunc20    5u  IPv6 472057      0t0  TCP localhost:ddi-tcp-1 (LISTEN)
jupyter-n 34490 phunc20   43u  IPv6 533193      0t0  TCP localhost:ddi-tcp-1->localhost:45414 (ESTABLISHED)
</pre>
