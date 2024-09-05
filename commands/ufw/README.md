- To see the current: `sudo ufw status`
- To add one rule, e.g.
    - `sudo ufw allow 1194/udp`
    - `sudo ufw allow OpenSSH`, equiv. to `sudo ufw allow 22/tcp`
- To delete some added rule, e.g.
    - `sudo ufw delete allow 1194/udp`
      ```bash
      (base) phunc20@luffa:~$ sudo ufw status
      [sudo] password for phunc20:
      Status: active
      
      To                         Action      From
      --                         ------      ----
      22/tcp                     ALLOW       Anywhere                  
      1194/udp                   ALLOW       Anywhere                  
      22/tcp (v6)                ALLOW       Anywhere (v6)             
      1194/udp (v6)              ALLOW       Anywhere (v6)             
      
      (base) phunc20@luffa:~$ sudo ufw delete allow 1194/udp
      Rule deleted
      Rule deleted (v6)
      (base) phunc20@luffa:~$ sudo ufw status
      Status: active
      
      To                         Action      From
      --                         ------      ----
      22/tcp                     ALLOW       Anywhere                  
      22/tcp (v6)                ALLOW       Anywhere (v6)             
      ```
    - Definitely not `sudo ufw deny 1194/udp`
      ```bash
      (base) phunc20@luffa:~$ sudo ufw deny 1194/udp
      Rule added
      Rule added (v6)
      (base) phunc20@luffa:~$ sudo ufw status
      Status: active
      
      To                         Action      From
      --                         ------      ----
      22/tcp                     ALLOW       Anywhere                  
      1194/udp                   DENY        Anywhere                  
      22/tcp (v6)                ALLOW       Anywhere (v6)             
      1194/udp (v6)              DENY        Anywhere (v6)             
      
      (base) phunc20@luffa:~$ sudo ufw delete deny 1194/udp
      Rule deleted
      Rule deleted (v6)
      (base) phunc20@luffa:~$ sudo ufw status
      Status: active
      
      To                         Action      From
      --                         ------      ----
      22/tcp                     ALLOW       Anywhere                  
      22/tcp (v6)                ALLOW       Anywhere (v6)     
      ```
- After all the delete or allow operations done, remember to
    - `sudo ufw disable`
    - and then `sudo ufw enable`
