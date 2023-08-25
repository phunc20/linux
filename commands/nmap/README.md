## Explore Ports
- TCP
  ```bash
  $ nmap -P0 <domain_name|ip>
  ```
  E.g.
  ```bash
  $ nmap -P0 julialang.org
  Starting Nmap 7.94 ( https://nmap.org ) at 2023-08-25 16:22 +07
  mass_dns: warning: Unable to determine any DNS servers. Reverse DNS is disabled. Try using --system-dns or specify valid servers with --dns-servers
  Nmap scan report for julialang.org (151.101.2.49)
  Host is up (0.046s latency).
  Other addresses for julialang.org (not scanned): 151.101.130.49 151.101.194.49 151.101.66.49 2a04:4e42::561 2a04:4e42:200::561 2a04:4e42:600::561 2a04:4e42:400::561
  Not shown: 998 filtered tcp ports (no-response)
  PORT    STATE SERVICE
  80/tcp  open  http
  443/tcp open  https
  
  Nmap done: 1 IP address (1 host up) scanned in 7.47 seconds
  $ nmap -P0 leetcode.com
  Starting Nmap 7.94 ( https://nmap.org ) at 2023-08-25 16:34 +07
  mass_dns: warning: Unable to determine any DNS servers. Reverse DNS is disabled. Try using --system-dns or specify valid servers with --dns-servers
  Nmap scan report for leetcode.com (104.26.8.101)
  Host is up (0.037s latency).
  Other addresses for leetcode.com (not scanned): 104.26.9.101 172.67.72.213 2606:4700:20::681a:865 2606:4700:20::681a:965 2606:4700:20::ac43:48d5
  Not shown: 996 filtered tcp ports (no-response)
  PORT     STATE SERVICE
  80/tcp   open  http
  443/tcp  open  https
  8080/tcp open  http-proxy
  8443/tcp open  https-alt
  
  Nmap done: 1 IP address (1 host up) scanned in 4.73 seconds
  ```
    - Domain names
        - are things like `google.com`, `julialang.org`, etc.
        - are **niether** `https://google.com` nor `http://leetcode.com`
          Indeed,
            - `https://google.com` is equiv. to `google.com:443`  
              (Try typing `google.com:443` in your browser)
            - `http://leetcode.com` is equiv. to `google.com:80`
- UDP
  ```bash
  $ sudo nmap -P0 -sU <domain_name|ip>
  ```
    - **(?)** Why we need `sudo` for UDP?



