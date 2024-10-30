## Arch Linux
```bash
pacman -S nginx
# Or
pacman -S nginx

# Then
sudo systemctl start nginx.service
# To reload/restart
sudo systemctl reload nginx.service
sudo systemctl restart nginx.service
```

Once the nginx service is started, the hosted page can be browsed by any
browser under `localhost` or `127.0.0.1`. And the default index page in
Arch Linux is `/usr/share/nginx/html/index.html`.


## Troubleshooting
- The follow message
  ```
  2024/10/03 14:00:16 [warn] 22798#22798: could not build optimal types_hash, you should increase either types_hash_max_size: 1024 or types_hash_bucket_size: 64; ignoring types_hash_bucket_size
  ```
  can be seen
    - either when you launch nginx in systemd and verify using `systemctl status nginx.service`
    - or when you test using `nginx -t`
  To fix this, as warning message suggested, increase the values for these keys inside the `http` block:  
  <pre style="margin-bottom: 0; border-bottom:none; padding-bottom:0.8em;">/etc/nginx/nginx.conf</pre>
  <pre style="margin-top: 0; border-top-style:dashed; padding-top: 0.8em;">http {
    types_hash_max_size 4096;
    server_names_hash_bucket_size 128;
    ...
  }
  </pre>
- With the following error, you'll first see **403 Forbidden** when you navigate
  to `localhost` in your browser
  ```
  Oct 03 14:23:24 beetroot nginx[25905]: 2024/10/03 14:23:24 [error] 25905#25905: *3 "/home/phunc20/desktop/go/hugo/quickstart/public/index.html" is forbidden (13: Permission denied), client: 127.0.0.1, server: localhost, request: "GET / HTTP/1.1", host: "localhost", referrer: "http://localhost/"
  ```
  The problem originates from the fact that nginx defaults to the Linux user `http`
  to execute nginx and `http` does not have the permission to access your customized
  path.  

  Several solutions are available, e.g.
    - Specify the root user in `/etc/nginx/nginx.conf`
