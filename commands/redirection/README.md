

## Examples
Can you see why the following redirection cannot successfully redirect the stderr?

```bash
[phunc20@pluie-t60 ~]$ add_path="/home/phunc20/.local/bin"
[phunc20@pluie-t60 ~]$ grep "$add_path" <($PATH) 2>/dev/null || echo add
-bash: /usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.useful-scripts:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.useful-scripts: No such file or directory
add
[phunc20@pluie-t60 ~]$ grep "$add_path" <($PATH) 2&>/dev/null || echo add
-bash: /usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.useful-scripts:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.useful-scripts: No such file or directory
add
[phunc20@pluie-t60 ~]$ grep "$add_path" <($PATH) >/dev/null || echo add
-bash: /usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.useful-scripts:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.useful-scripts: No such file or directory
add
[phunc20@pluie-t60 ~]$
```

Well, two of many ways to explain it:
01. You forgot `echo`, i.e. **`<(echo $PATH)`** instead of `<($PATH)`
  ```bash
  [phunc20@pluie-t60 ~]$ grep "$add_path" <(echo $PATH)
  [phunc20@pluie-t60 ~]$ grep "home" <(echo $PATH)
  /usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.useful-scripts:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/phunc20/.local/bin
  ```
02. The error redirection was not put where there is an error
  ```bash
  [phunc20@pluie-t60 ~]$ grep "$add_path" <($PATH &>/dev/null)
  [phunc20@pluie-t60 ~]$
  ```









