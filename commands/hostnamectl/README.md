## How to Change <code>hostname</code> (i.e. Computer Name)?
<code><b>sudo hostnamectl set-hostname \<new_host_name\></b></code>
<br>
<br>
For example,
<pre>
sudo hostnamectl set-hostname denjiro-x61
</pre>

**Rmk.**
Artix (runit) has no command called `hostnamectl`, but it seems that one can use the close
alternative of `hostname` command:
```bash
[phunc20@headache-x220tablet ~]$ sudo nvim /etc/hostname
[phunc20@headache-x220tablet ~]$ hostname -F /etc/hostname
hostname: sethostname: Operation not permitted
[phunc20@headache-x220tablet ~]$ sudo hostname -F /etc/hostname
[phunc20@headache-x220tablet ~]$ echo $HOSTNAME
headache-x220tablet
[phunc20@headache-x220tablet ~]$ # maybe one has to wait until rebooting into the system?
```
