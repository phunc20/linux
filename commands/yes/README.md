`yes` will repeat its args (as a string) indefinitely until being killed, say, by `Ctrl-c`.
For example, the following two are equivalent:
```bash
yes I just failed an interview.
```
and
```bash
while true; do echo I just failed an interview.; done
```
