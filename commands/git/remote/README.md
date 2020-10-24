
### About
- `git remote`: show available remote
- `git remote get-url <remote_name>`: print the remote's url
- `git remote rename <old_remote_name> <new_remote_name>`: modify a remote's name
- `git remote add <name> <url>`: add a new remote
- `git remote remove <remote_name>`: remove a remote


```bash
[phunc20@tako-x60 commands]$ git remote
origin
[phunc20@tako-x60 commands]$ git remote get-url origin
https://www.github.com/phunc20/linux.git
[phunc20@tako-x60 commands]$ git remote rename origin github
[phunc20@tako-x60 commands]$ git remote
github
[phunc20@tako-x60 commands]$ git remote add gitlab https://gitlab.com/phunc20/linux.git
[phunc20@tako-x60 commands]$ git remote
github
gitlab
[phunc20@tako-x60 commands]$ git pull gitlab
From https://gitlab.com/phunc20/linux
 * [new branch]      master     -> gitlab/master
You asked to pull from the remote 'gitlab', but did not specify
a branch. Because this is not the default configured remote
for your current branch, you must specify a branch on the command line.
[phunc20@tako-x60 commands]$ git br
* master
[phunc20@tako-x60 commands]$ git pull gitlab master
From https://gitlab.com/phunc20/linux
 * branch            master     -> FETCH_HEAD
Already up to date.
[phunc20@tako-x60 commands]$ git remote remove gitlab
[phunc20@tako-x60 commands]$ git remote
github
```

### Which url to add when you want to add a new remote?
The answer is actually **quite simple**: Just copy the same url that you use to clone the repo.

With that said, you have two options:
01. using ssh: Then you should use the url of ssh
02. using https: Then you should copy the url for https

For example,
```bash
[phunc20@tako-x60 commands]$ git remote add gitlab git@gitlab.com:phunc20/linux.git
[phunc20@tako-x60 commands]$ git remote
github
gitlab
[phunc20@tako-x60 commands]$ git remote get-url gitlab
git@gitlab.com:phunc20/linux.git
[phunc20@tako-x60 commands]$ git remote get-url github
https://www.github.com/phunc20/linux.git
[phunc20@tako-x60 commands]$
```

