## Display Current Time and Related Info
- <code>timedatectl</code> or equiv. <code>timedatectl status</code>
    ```bash
    [phunc20@denjiro-x220 ~]$ timedatectl
                   Local time: Sun 2020-09-20 14:59:30 +07
               Universal time: Sun 2020-09-20 07:59:30 UTC
                     RTC time: Sun 2020-09-20 07:59:30
                    Time zone: Asia/Ho_Chi_Minh (+07, +0700)
    System clock synchronized: no
                  NTP service: inactive
              RTC in local TZ: no
    [phunc20@denjiro-x220 ~]$
    ```




## Set Hour/Minute/Second
- Use <code><b>timedatectl set-time hh:mm:ss</b></code>, e.g. <code>timedatectl set-time 09:08:07</code>
    ```bash
    [phunc20@denjiro-x220 ~]$ date
    Sun Sep 20 09:46:14 PM +07 2020
    [phunc20@denjiro-x220 ~]$ timedatectl set-time 14:46:30
    [phunc20@denjiro-x220 ~]$ date
    Sun Sep 20 02:48:30 PM +07 2020
    [phunc20@denjiro-x220 ~]$
    ```
- Use <code><b>date +%T -s "hh:mm:ss"</b></code> or, by <b>AM/PM</b>, e.g. <code><b>date +%T%p -s "6:10:30AM"</b></code>
    ```bash
    [phunc20@denjiro-x220 ~]$ date
    Sun Sep 20 03:14:20 PM +07 2020
    [phunc20@denjiro-x220 ~]$ date +%T -s "22:22:22"
    date: cannot set date: Operation not permitted
    22:22:22
    [phunc20@denjiro-x220 ~]$ sudo date +%T -s "22:22:22"
    22:22:22
    [phunc20@denjiro-x220 ~]$ date
    Sun Sep 20 10:22:28 PM +07 2020
    [phunc20@denjiro-x220 ~]$ sudo date +%T%p -s "03:20:20PM"
    15:20:20PM
    [phunc20@denjiro-x220 ~]$ date
    Sun Sep 20 03:20:21 PM +07 2020


    ```

## Timezone
- <code><b>timedatectl list-timezones</b></code>
    ```
    [phunc20@denjiro-x220 ~]$ timedatectl list-timezones | grep "Asia/H"
    Asia/Hebron
    Asia/Ho_Chi_Minh
    Asia/Hong_Kong
    Asia/Hovd
    [phunc20@denjiro-x220 ~]$ timedatectl list-timezones | grep "Asia/T"
    Asia/Taipei
    Asia/Tashkent
    Asia/Tbilisi
    Asia/Tehran
    Asia/Thimphu
    Asia/Tokyo
    Asia/Tomsk
    ```
- File <code><b>/etc/localtime</b></code>
    ```bash
    [phunc20@denjiro-x220 ~]$ ls -l /etc/localtime
    lrwxrwxrwx 1 root root 36 Sep 20  2020 /etc/localtime -> /usr/share/zoneinfo/Asia/Ho_Chi_Minh
    [phunc20@denjiro-x220 ~]$
    ```


## Misc.
```bash
[phunc20@denjiro-x220 ~]$ ls -l /etc/adjtime
-rw-r--r-- 1 root root 44 Sep 20  2020 /etc/adjtime
[phunc20@denjiro-x220 ~]$ cat /etc/adjtime
0.000000 1600592927 0.000000
1600592927
UTC
[phunc20@denjiro-x220 ~]$ sudo hwclock --systohc
```
