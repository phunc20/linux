## Installation
- Arch Linux has two options for installation:
  - `openbsd-netcat`
  - `gnu-netcat`


## Usage
1. As an easy message exchange program across LAN.
   Say, you want to send a URL from one machine with MacOS
   to another with Arch Linux.
    - First, listen on Arch Linux:
      ```bash
      # 55555 is just some random, unused port
      nc -l -p 55555
      ```
    - Second, connect your MacOS to Arch Linux by
      (assuming the IP address of Arch Linux is `192.168.0.114`.)
      ```bash
      nc 192.168.0.114 55555
      ```
      Then the two computers can start to type messages to each other,
      and the other will see the message displayed on their own screen.
      Note that
        - It does not matter which computer types first.
        - It could be a monologue -- One computer could type all the time with
	  the other listening only.
	- Once one side wants to end the game, the other side is forced to quit
	  as well.
