- Cannot use `tmux` after ssh into the server?
    - This happened to me once. The root cause was that
        1. On my local machine, I have changed the environment variable `TERM` into
           `alacritty`
        2. When ssh into the server, the environment variable `TERM` was still `alacritty`,
           which, of course, the server had not installed
      ```bash
      ~ $ echo $TERM
      alacritty
      ~ $ ssh -i ~/.ssh/top_secret_server_key root@topsecret.xyz
      Last login: Wed Aug 23 05:46:38 2023 from 192.168.0.15
      root@topsecret.xyz:~# echo $TERM
      alacritty
      root@topsecret.xyz:~# tmux a
      open terminal failed: missing or unsuitable terminal: alacritty
      ```
      One solution is to switch back to some terminal that the server
      recognizes, e.g. `xterm-256color`:
      - Either we type this command each time we ssh into the server
        ```bash
        $ TERM=xterm-256color
        ```
      - Or, say, our server uses Bash, write the following line into `~/.profile`
        or `~/.bashrc`
        ```bash
        export TERM=xterm-256color
        ```
