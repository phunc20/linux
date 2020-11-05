
## Ref. [https://wiki.archlinux.org/index.php/System_time](https://wiki.archlinux.org/index.php/System_time)


Two clocks are present on systems: a hardware clock and a system clock which are also detailed in this article.

Standard behavior of most operating systems is:

Set the system clock from the hardware clock on boot.
Keep accurate time of the system clock, see #Time synchronization.
Set the hardware clock from the system clock on shutdown.



### Abbreviations and Synonyms
- **RTC**, Real Time Clock (aka **hardware clock**, **CMOS clock**)
- 



### Switch SSD Drive Example

```bash
~ ❯❯❯ sudo hwclock --show
2020-11-06 04:13:55.416702+07:00
~ ❯❯❯ sudo hwclock
2020-11-06 04:13:58.717909+07:00
~ ❯❯❯ timedatectl
               Local time: Fri 2020-11-06 04:14:33 +07
           Universal time: Thu 2020-11-05 21:14:33 UTC
                 RTC time: Thu 2020-11-05 21:14:33
                Time zone: Asia/Ho_Chi_Minh (+07, +0700)
System clock synchronized: no
              NTP service: inactive
          RTC in local TZ: no
~ ❯❯❯ cat /etc/adjtime
0.000000 1601653928 0.000000
1601653928
UTC
```

The time shown on my dwmbar, i.e. the returned value of the `date` command, was **incorrect**.
- This happened when I switched the SSD drive from a thinkpad T400 to a T410
- I noticed that the `timedatectl` gave
    ```
    System clock synchronized: no
    ```
- When we install arch linux, there is this command of `timedatectl set-ntp true`, which can swith the `no` above to `yes`:
    ```bash
    ~ ❯❯❯ timedatectl set-ntp true
    ==== AUTHENTICATING FOR org.freedesktop.timedate1.set-ntp ====
    Authentication is required to control whether network time synchronization shall be enabled.
    Authenticating as: root
    Password:
    ~ ❯❯❯ sudo timedatectl set-ntp true
    ~ ❯❯❯ timedatectl status
                   Local time: Thu 2020-11-05 21:32:33 +07
               Universal time: Thu 2020-11-05 14:32:33 UTC
                     RTC time: Thu 2020-11-05 14:32:33
                    Time zone: Asia/Ho_Chi_Minh (+07, +0700)
    System clock synchronized: yes
                  NTP service: active
              RTC in local TZ: no
    ```
- This way, it seems that I fixed the time on the system
- Using `timedatectl set-time "yyyy-MM-dd hh:mm:ss"` seems to be **a bad idea**
- **Other bad ideas**:
    ```
    # hwclock --systohc
    # hwclock --hctosys
    ```
