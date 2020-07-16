The scenario is that
- You have a <b>big</b> file, say about <code><b>20GB</b></code>
- You have to send it via email and your email server does not allow such size

The <code><b>split</b></code> command can split a file into several pieces and later on you may use the <code><b>cat</b></code>
command to <b>concatenate</b> them back together.
- <code><b>split -b \<SIZE\> \<your-file\></b></code>
- <code><b>cat x* > \<reconstructed-file\></b></code>

For example,
<pre>
$ ls
val2017.tar.bz2
$ du -hsx *
774M    val2017.tar.bz2
$ split -b 100M val2017.tar.bz2
$ ls
val2017.tar.bz2  xaa  xab  xac  xad  xae  xaf  xag  xah
$ cat x* > reconstructed.tar.bz2
$ du -hsx *
774M    reconstructed.tar.bz2
774M    val2017.tar.bz2
100M    xaa
100M    xab
100M    xac
100M    xad
100M    xae
100M    xaf
100M    xag
74M     xah
$ tar tvf reconstructed.tar.bz2
drwxrwxr-x phunc20/wheel     0 2017-08-31 15:10 val2017/
-rw-rw-r-- phunc20/wheel 231405 2014-08-16 07:57 val2017/000000184978.jpg
-rw-rw-r-- phunc20/wheel 192333 2014-08-16 07:41 val2017/000000151662.jpg
-rw-rw-r-- phunc20/wheel 321557 2014-08-16 07:53 val2017/000000218424.jpg
-rw-rw-r-- phunc20/wheel 180568 2014-08-16 07:52 val2017/000000289702.jpg
-rw-rw-r-- phunc20/wheel 213120 2014-08-16 08:09 val2017/000000276804.jpg
-rw-rw-r-- phunc20/wheel 174168 2014-08-16 07:59 val2017/000000548555.jpg
-rw-rw-r-- phunc20/wheel 106740 2014-08-16 07:47 val2017/000000174231.jpg
-rw-rw-r-- phunc20/wheel 219406 2014-08-16 08:15 val2017/000000166918.jpg
-rw-rw-r-- phunc20/wheel 211976 2014-08-16 07:33 val2017/000000007386.jpg
-rw-rw-r-- phunc20/wheel 250952 2014-08-16 07:54 val2017/000000023034.jpg
-rw-rw-r-- phunc20/wheel 142347 2014-08-16 07:51 val2017/000000511384.jpg
</pre>
