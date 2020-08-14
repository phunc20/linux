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


## Another scenario
would be when you create a socket and you want to know about its PID. For example,

```
(rlcomp2020) [phunc20@artichaut-x220 Miner-Testing-Server]$ python DUMMY_SERVER.py 1111
# Socket created
(rlcomp2020) [phunc20@artichaut-x220 Miner-Testing-Server]$ python DUMMY_SERVER.py 1111
^CTraceback (most recent call last):
  File "DUMMY_SERVER.py", line 352, in <module>
    conn, addr = s.accept()
  File "/usr/lib64/python3.6/socket.py", line 205, in accept
    fd, addr = self._accept()
KeyboardInterrupt
```

In the mean time, in another terminal emulator:
```
(homl-2e) [phunc20@artichaut-x220 handson-ml2]$ lsof -i:1111
COMMAND    PID    USER   FD   TYPE  DEVICE SIZE/OFF NODE NAME
python  641678 phunc20    3u  IPv4 4160375      0t0  TCP localhost:lmsocialserver (LISTEN)
(homl-2e) [phunc20@artichaut-x220 handson-ml2]$ lsof -i:1111
(homl-2e) [phunc20@artichaut-x220 handson-ml2]$ lsof -i:1111
(homl-2e) [phunc20@artichaut-x220 handson-ml2]$
```
