I used to only know of commands <code>df</code> and <code>df -h</code>.

One day I came up with the idea of writing a script or conceiving an efficient
combination of commands to sum the different columns of <code>df -h</code> up.

Ironically, this functionality is built into <code>df</code> already. (One just specify the <code><b>--total</b></code> option.) For example,

<pre>
$ df --total -h
Filesystem      Size  Used Avail Use% Mounted on
dev             7.8G     0  7.8G   0% /dev
run             7.8G  916K  7.8G   1% /run
/dev/sdb2        30G   24G  4.4G  85% /
tmpfs           7.8G  255M  7.6G   4% /dev/shm
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
tmpfs           7.8G  8.0K  7.8G   1% /tmp
/dev/sdb4       386G   89G  278G  25% /home
/dev/sda1       458G  198G  237G  46% /home/phunc20/samsung-SATA
tmpfs           1.6G  8.0K  1.6G   1% /run/user/1000
total           914G  310G  560G  36% -
</pre>


## Diff btw <code>-H</code> and <code>-h</code>
- <code><b>-H</b></code>: <b>kilo</b>, <b>mega</b>, etc, i.e. <code><b>1000</b></code>, <code><b>10**6</b></code>, etc.
- <code><b>-h</b></code>: <b>kibi</b>, <b>mebi</b>, etc, i.e. <code><b>1024</b></code>, <code><b>1024**2</b></code>, etc.
For example,
<pre>
$ df -H
Filesystem      Size  Used Avail Use% Mounted on
dev             8.4G     0  8.4G   0% /dev
run             8.4G  934k  8.4G   1% /run
/dev/sdb2        32G   26G  4.7G  85% /
tmpfs           8.4G  267M  8.1G   4% /dev/shm
tmpfs           8.4G     0  8.4G   0% /sys/fs/cgroup
tmpfs           8.4G  8.2k  8.4G   1% /tmp
/dev/sdb4       415G   95G  299G  25% /home
/dev/sda1       492G  212G  255G  46% /home/phunc20/samsung-SATA
tmpfs           1.7G  8.2k  1.7G   1% /run/user/1000
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
dev             7.8G     0  7.8G   0% /dev
run             7.8G  912K  7.8G   1% /run
/dev/sdb2        30G   24G  4.4G  85% /
tmpfs           7.8G  255M  7.6G   4% /dev/shm
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
tmpfs           7.8G  8.0K  7.8G   1% /tmp
/dev/sdb4       386G   89G  278G  25% /home
/dev/sda1       458G  198G  237G  46% /home/phunc20/samsung-SATA
tmpfs           1.6G  8.0K  1.6G   1% /run/user/1000
$ df
Filesystem     1K-blocks      Used Available Use% Mounted on
dev              8133280         0   8133280   0% /dev
run              8141568       912   8140656   1% /run
/dev/sdb2       30832548  24727056   4516244  85% /
tmpfs            8141568    260672   7880896   4% /dev/shm
tmpfs            8141568         0   8141568   0% /sys/fs/cgroup
tmpfs            8141568         8   8141560   1% /tmp
/dev/sdb4      404705968  92680636 291397632  25% /home
/dev/sda1      479669952 206805144 248429148  46% /home/phunc20/samsung-SATA
tmpfs            1628312         8   1628304   1% /run/user/1000
# For Filesystem "dev"
$ python -c "print(8133280*1024/1000/1000/1000)"
8.32847872
$ python -c "print(8133280/1024/1024)"
7.756500244140625
# For Filesystem "/dev/sdb4"
$ python -c "print(404705968/1024/1024)"
385.9576873779297
$ python -c "print(404705968*1024/1000/1000/1000)"
414.41891123199997
</pre>

<b>N.B.</b> <code>df</code> 只允許 4 characters, 因為美觀, 一切採取無條件進位至位數美觀為止.

不是不可以
