- <code>%%pattern</code> trim the <b>longest</b> matching from the <b>right</b>
- <code>%pattern</code> trim the <b>shortest</b> matching from the <b>right</b>
- <code>##pattern</code> trim the <b>longest</b> matching from the <b>left</b>
- <code>#pattern</code> trim the <b>shortest</b> matching from the <b>left</b>

<pre>
[phunc20@artichaut-x220 useful-scripts]$ foo=/tmp/my.dir/filename.tar.gz
[phunc20@artichaut-x220 useful-scripts]$ echo ${foo%%.*}
/tmp/my
[phunc20@artichaut-x220 useful-scripts]$ echo ${foo%/*}
/tmp/my.dir
[phunc20@artichaut-x220 useful-scripts]$ echo ${foo##*/}
filename.tar.gz
[phunc20@artichaut-x220 useful-scripts]$ echo ${foo#*/}
tmp/my.dir/filename.tar.gz
[phunc20@artichaut-x220 useful-scripts]$ echo ${foo#.}
/tmp/my.dir/filename.tar.gz
[phunc20@artichaut-x220 useful-scripts]$ echo ${foo#*.}
dir/filename.tar.gz
[phunc20@artichaut-x220 useful-scripts]$ echo ${foo##*.}
gz
</pre>
