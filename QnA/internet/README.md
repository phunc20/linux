- Hostname resolution to IP
    - `ping`
      ```bash
      $ ping -c3 google.com
      PING google.com (142.251.130.14) 56(84) bytes of data.
      64 bytes from hkg07s54-in-f14.1e100.net (142.251.130.14): icmp_seq=1 ttl=113 time=37.7 ms
      64 bytes from hkg07s54-in-f14.1e100.net (142.251.130.14): icmp_seq=2 ttl=113 time=37.5 ms
      64 bytes from hkg07s54-in-f14.1e100.net (142.251.130.14): icmp_seq=3 ttl=113 time=37.0 ms
      
      --- google.com ping statistics ---
      3 packets transmitted, 3 received, 0% packet loss, time 2002ms
      rtt min/avg/max/mdev = 36.981/37.405/37.741/0.316 ms
      ```
    - `getent`
      ```bash
      $ getent ahostsv4 google.com
      142.251.130.14  STREAM google.com
      142.251.130.14  DGRAM
      142.251.130.14  RAW
      $ getent hosts google.com
      2404:6800:4005:80b::200e google.com
      ```
