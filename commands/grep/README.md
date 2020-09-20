








## <code>or</code>
<code><b>\</b></code> is <code>or</code>. Just remember to escape (<code><b>\|</b></code>).
```bash
[phunc20@denjiro-x220 downloads]$ sha256sum -c julia-1.5.1.sha256 2>/dev/null | grep 'FAIL\|No'
julia-1.5.1-freebsd-x86_64.tar.gz: FAILED open or read
julia-1.5.1-linux-aarch64.tar.gz: FAILED open or read
julia-1.5.1-linux-i686.tar.gz: FAILED open or read
julia-1.5.1-mac64.dmg: FAILED open or read
julia-1.5.1-mac64.tar.gz: FAILED open or read
julia-1.5.1-musl-x86_64.tar.gz: FAILED open or read
julia-1.5.1-win32.exe: FAILED open or read
julia-1.5.1-win32.tar.gz: FAILED open or read
julia-1.5.1-win32.zip: FAILED open or read
julia-1.5.1-win64.exe: FAILED open or read
julia-1.5.1-win64.tar.gz: FAILED open or read
julia-1.5.1-win64.zip: FAILED open or read

[phunc20@denjiro-x220 downloads]$ sha256sum -c julia-1.5.1.sha256 | grep 'FAIL\|OK'
sha256sum: julia-1.5.1-freebsd-x86_64.tar.gz: No such file or directory
sha256sum: julia-1.5.1-linux-aarch64.tar.gz: No such file or directory
sha256sum: julia-1.5.1-linux-i686.tar.gz: No such file or directory
julia-1.5.1-freebsd-x86_64.tar.gz: FAILED open or read
julia-1.5.1-linux-aarch64.tar.gz: FAILED open or read
julia-1.5.1-linux-i686.tar.gz: FAILED open or read
sha256sum: julia-1.5.1-mac64.dmg: No such file or directory
sha256sum: julia-1.5.1-mac64.tar.gz: No such file or directory
julia-1.5.1-linux-x86_64.tar.gz: OK
sha256sum: julia-1.5.1-musl-x86_64.tar.gzjulia-1.5.1-mac64.dmg: FAILED open or read
: No such file or directoryjulia-1.5.1-mac64.tar.gz: FAILED open or read

sha256sum: julia-1.5.1-musl-x86_64.tar.gz: FAILED open or read
julia-1.5.1-win32.exe: No such file or directory
julia-1.5.1-win32.exe: FAILED open or read
sha256sum: julia-1.5.1-win32.tar.gz: No such file or directory
julia-1.5.1-win32.tar.gz: FAILED open or read
sha256sum: julia-1.5.1-win32.zip: No such file or directory
julia-1.5.1-win32.zip: FAILED open or read
sha256sum: julia-1.5.1-win64.exe: No such file or directory
sha256sum: julia-1.5.1-win64.tar.gz: No such file or directory
sha256sum: julia-1.5.1-win64.zip: No such file or directory
sha256sum: WARNING: 12 listed files could not be read
julia-1.5.1-win64.exe: FAILED open or read
julia-1.5.1-win64.tar.gz: FAILED open or read
julia-1.5.1-win64.zip: FAILED open or read
```







