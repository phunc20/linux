## Why Simply Editing <code>/etc/sudoers</code> Won't Work?
As of <b>2020/09/18</b>, if one wants to free themselves from having to enter password when doing sth with <code>sudo</code> authority, simply
uncommenting the line inside <code>/etc/sudoers</code> will not work under <b>manjaro</b>:
```bash
%wheel ALL=(ALL) NOPASSWD: ALL
```

However, one of existing workarounds is
- copying that exact line and pasting it at the end of the file <code>/etc/sudoers</code> will do. (i.e. as of 2020/09/18, at the end of the file, right after the line <code>@includedir /etc/sudoers.d</code>)


















