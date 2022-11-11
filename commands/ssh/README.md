



/etc/ssh/sshd_config
ssh-keygen -t rsa


## `~/.ssh/config`
This file can help specify which SSH key to use at any command that uses SSH under the hood,
e.g. `ssh` (of course), `git`, etc.

Without specifying otherwise, the key under the path `~/.ssh/id_rsa` will be assumed to
be the private key that the user wants to use (if it exists). To change this default
behaviour, we can edit the file `~/.ssh/config`. (Note that `~/.ssh/config` does not
exist by default, you just create it as a new file.)

Here is a simple example of the content of a `~/.ssh/config` file:
```
Host github.com
    HostName 13.239.175.159
    IdentityFile ~/.ssh/id_github
    IdentitiesOnly yes

Host gitlab.com
    HostName 172.65.255.19
    IdentityFile ~/.ssh/id_gitlab
    IdentitiesOnly yes

Host my_super_ec2_instance
    HostName 172.65.255.19
    User ubuntu
    IdentityFile ~/.ssh/my_super_ec2_instance.pem
```

Another benefit of adding servers in `~/.ssh/config` is that
one could `ssh` into the listed SSH servers by their names:
```sh
ssh my_super_ec2_instance
```
