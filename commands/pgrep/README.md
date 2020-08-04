
## Stop Stuck <code>ssh</code>
Sometimes <code>ssh</code> connection may go dumb and get stuck. I usually choose to kill the process in another terminal emulator in order to get back the control. But how does one locate the PID of the process in this case? Using <code><b>pgrep -a</b></code> is one solution.
<pre>
[leif@artichaut-x220 ~]$ pgrep -a ssh
8118 /bin/bash /home/leif/ssh-amazon
8121 ssh-agent
8126 ssh -p 8080 leif@120.255.255.111
[leif@artichaut-x220 ~]$ kill 8126
</pre>


