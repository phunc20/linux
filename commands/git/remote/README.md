
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

### Set tracked remote branch
- `git branch --set-upstream-to=<remote>/<branch> <local_branch>`
- can set multiple tracked remote branches?
- Example: (I've deleted https connection to github and re-added ssh connection, so the tracked branch was lost.)
```bash
leif@CenterLap-x1carbon ~/git-repos/phunc20/linux $ git st
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   ../../../../../commands/ranger/README.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        ./

leif@CenterLap-x1carbon ~/git-repos/phunc20/linux $ git pull
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=<remote>/<branch> master

leif@CenterLap-x1carbon ~/git-repos/phunc20/linux $ git branch --set-upstream-to=github/master master
Branch 'master' set up to track remote branch 'master' from 'github'.
leif@CenterLap-x1carbon ~/git-repos/phunc20/linux $ git st
On branch master
Your branch is up to date with 'github/master'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   ../../../../../commands/ranger/README.md

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   ../../../../../commands/git/remote/README.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        ./
leif@CenterLap-x1carbon ~/git-repos/phunc20/linux $
```
