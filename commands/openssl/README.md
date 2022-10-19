<https://superuser.com/questions/470949/how-do-i-create-a-1gb-random-file-in-linux>
```bash
~ ❯❯❯ mkcd ssl
~ ❯❯❯ sudo dnf install openssl
~/ssl ❯❯❯ openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout "fchollet-jupyter.key" -out "fchollet-jupyter.pem" -batch
Generating a RSA private key
......................................+++++
............+++++
writing new private key to 'fchollet-jupyter.key'
-----
~/ssl ❯❯❯ ls
fchollet-jupyter.key  fchollet-jupyter.pem
~/ssl ❯❯❯ 
```
