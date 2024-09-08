## In Arch Linux
The command `logger` can write messages into the system log, which in Arch Linux
can be inspected by the command `journalctl`. E.g.

```bash
$ logger "False alarm: Nothing really happens. Take heart."
$ journalctl --since "5 sec ago"
Sep 08 21:53:27 beetroot phunc20[6183]: False alarm: Nothing really happens. Take heart.
$
```
