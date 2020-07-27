[dory@denjiro-t410 ~]$ workon tf1.15.0-py3.6                                                                               [29/29]
(tf1.15.0-py3.6) [dory@denjiro-t410 ~]$ pip install tensorflow
Collecting tensorflow
  Downloading tensorflow-2.2.0-cp36-cp36m-manylinux2010_x86_64.whl (516.2 MB)
     |████████████████████████████████| 516.2 MB 19 kB/s
ERROR: Could not install packages due to an EnvironmentError: [Errno 28] No space left on device

(tf1.15.0-py3.6) [dory@denjiro-t410 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
dev             1.9G     0  1.9G   0% /dev
run             1.9G  1.4M  1.9G   1% /run
/dev/sda1       117G   18G   94G  16% /
tmpfs           1.9G   41M  1.9G   3% /dev/shm
tmpfs           1.9G     0  1.9G   0% /sys/fs/cgroup
tmpfs           1.9G  8.5M  1.9G   1% /tmp
tmpfs           380M   12K  380M   1% /run/user/1000
(tf1.15.0-py3.6) [dory@denjiro-t410 ~]$ export TMPDIR=/var/tmp
(tf1.15.0-py3.6) [dory@denjiro-t410 ~]$ pip install tensorflow==1.15.0
Collecting tensorflow==1.15.0
  Using cached tensorflow-1.15.0-cp36-cp36m-manylinux2010_x86_64.whl (412.3 MB)
Requirement already satisfied: termcolor>=1.1.0 in ./.virtualenvs/tf1.15.0-py3.6/lib/python3.6/site-packages (from tensorflow==1.1
5.0) (1.1.0)
Requirement already satisfied: gast==0.2.2 in ./.virtualenvs/tf1.15.0-py3.6/lib/python3.6/site-packages (from tensorflow==1.15.0)
(0.2.2)
Requirement already satisfied: astor>=0.6.0 in ./.virtualenvs/tf1.15.0-py3.6/lib/python3.6/site-packages (from tensorflow==1.15.0)
 (0.8.1)

