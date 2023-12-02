Terminology
- `fg` stands for "foreground"
- `bg` stands for "background"

Normally, when you run a Linux command, your command line will wait until
the execution of the command finishes before giving back the prompt/control
to you. But sometimes you want immediate control back, or, to put it diff,
you want to run a command in the background. This could be achieved at least
in two ways
1. By putting `&` at the end of your command
2. By first stopping your command using `ctrl-z` and then `bg`

The `jobs` command can help you see all the command(s) launched from the
current command line. The jobs listed are given consecutive numbers, and
these could be useful, e.g.
```bash
$ wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_Intro.mp4 &
[1] 4918
$
Redirecting output to ‘wget-log’.

$ wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L1.mp4 &
[2] 4929
$
Redirecting output to ‘wget-log.1’.

$ jobs
[1]-  Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_Intro.mp4 &
[2]+  Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L1.mp4 &
```

Notice at least two things here:
1. You can put any jobs into foreground again by, e.g.
   ```bash
   # This put the job numbered 2 into foreground
   $ fg 2
   ```
2. `wget` combined with `&` tells you that it would redirect output to `wget-log`,
   so aside from using `fg` to inspect the progress bar, one can also
   choose to `cat wget-log`, which is easier and more convenient.

`jobs`, `fg`, `bg`, `ctrl-z` could be interweaved to suit your use case. For example,
we `wget` w/o putting the process into background.
```bash
$ wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
--2023-12-02 10:59:59--  https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
Loaded CA certificate '/etc/ssl/certs/ca-certificates.crt'
Resolving dft3h5i221ap1.cloudfront.net (dft3h5i221ap1.cloudfront.net)... 108.157.34.68, 108.157.34.107, 108.157.34.228, ...
Connecting to dft3h5i221ap1.cloudfront.net (dft3h5i221ap1.cloudfront.net)|108.157.34.68|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 82613989 (79M) [video/mp4]
Saving to: ‘Weaviate_L2.mp4’

Weaviate_L2.mp4          0%[                            ] 782.65K   583KB/s               ^Z[1]   Done                    wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_Intro.mp4
[2]   Done                    wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L1.mp4

[3]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
$ jobs
[3]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
$ jobs
[3]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
```

Then we `wget` another video, `Weaviate_L3.mp4`, and also `ctrl-z` to stop it like before. Now if we call `jobs`, we'd see two stopped jobs.
```bash
$ jobs
[3]-  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
[4]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L3.mp4
```

Then we could make use of the job number to put into either background or foreground
any job we like.
```bash
$ bg 3
[3]- wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4 &

Redirecting output to ‘wget-log.2’.
$ jobs
[3]-  Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4 &
[4]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L3.mp4
$ fg 3
wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
--2023-12-02 10:59:59--  https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
Loaded CA certificate '/etc/ssl/certs/ca-certificates.crt'
Resolving dft3h5i221ap1.cloudfront.net (dft3h5i221ap1.cloudfront.net)... 108.157.34.68, 108.157.34.107, 108.157.34.228, ...
Connecting to dft3h5i221ap1.cloudfront.net (dft3h5i221ap1.cloudfront.net)|108.157.34.68|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 82613989 (79M) [video/mp4]
Saving to: ‘Weaviate_L2.mp4’

Weaviate_L2.mp4         11%[==>                         ]   9.23M   579KB/s    eta 22m 13s^Z
[3]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
$ jobs
[3]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4
[4]-  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L3.mp4
$
```

To put a job running in the background from `RUNNING` to `Stopped`, you've already
known one way
>> First put it into foreground, then `ctrl-z`

But that's another way: **Using the `kill` command with the `SIGTSTP` signal**.
For example,
```bash
$ jobs
[3]   Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4 &
[4]   Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L3.mp4 &
[5]-  Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L4.mp4 &
[6]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L5.mp4
$ kill -s SIGTSTP %5

[5]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L4.mp4
$ jobs
[3]   Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L2.mp4 &
[4]   Running                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L3.mp4 &
[5]+  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L4.mp4
[6]-  Stopped                 wget https://dft3h5i221ap1.cloudfront.net/Weaviate/C1/video/Weaviate_L5.mp4
```

To read more about `SIGTSTP`, `man 7 signal`.
