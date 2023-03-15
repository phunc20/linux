# The Story
I would like to use ethernet cable (crossover/non-crossover diff?) to connect two machines together,
so that they can exchange files even when Internet is down. (E.g. `ssh/scp/rsync` via router seems
to fail when Internet is down or during a breakout.)


## Solutions
The following are solutions which worked after my attempts:
1. Follow and check the following steps
    - [ ] Make sure in the stdout of `ip addr show` of your Ethernet interface/device, there is no `NO-CARRIER` shown.
      (Note. Sometimes a reboot would make an existing `NO-CARRIER` disappear.)
    - [ ] Assign an IP address to your Ethernet interface, e.g. say your interface's name is `enp0s31f6`,
      ```sh
      $ sudo ip addr add 192.168.20.1/16 dev enp0s31f6
      ```
      In case you did it wrong, a similar command could erase your error:
      ```sh
      $ sudo ip addr del 192.168.20.1/16 dev enp0s31f6
      ```
      Note that
        - In this particular case, the **subnet mask is important**. For instance,
            - `192.168.20.1/24` will fail
            - `192.168.20.1/25` will fail, too.
        - Again in this particular case, the `20` in `192.168.20.1/16` is random -- In my case, I had
          a `wlan0` interface already occupying `192.168.0.x`, so I just choose `20` as sth other than `0`.
        - According to [this comment on archlinux forums](https://bbs.archlinux.org/viewtopic.php?pid=1399184#p1399184),
          one should use one of the following private network addresses:
            - `10.x.x.x/8`
            - `172.16.x.x/12`
            - `192.168.x.x/16`
    - [ ] Repeat almost the same thing on the remaining machine:
      ```sh
      $ sudo ip addr add 192.168.20.15/16 dev enp0s31f6
      ```
      The last byte could be anything but the same byte as the previous machine.
    - [ ] Once the above done, we could immediate observe the smell of a success:
        - `ip -br a` or `ip addr show` will both show that the Ethernet interface as `UP`
        - In addition, we can `ping` each other btw the two machines

