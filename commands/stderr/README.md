## Redirect stderr to stdout
Use `2>&1`.
```bash
$ sha256sum -c julia-1.7.1.sha256 2>&1 | grep OK
julia-1.7.1-linux-x86_64.tar.gz: OK
```
