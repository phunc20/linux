


## To stop tracking an already-being-tracked file
you do
```bash
git rm --cached <file>
# or if it is an entire folder
git rm -r --cached <folder>
```
<b>WARNING</b>: While this will not remove the physical file from your local, it will <b>remove</b> the files <b>from other developers' machines</b> on next <code>git pull</code>.

<b>Cf.</b> [https://stackoverflow.com/questions/1274057/how-to-make-git-forget-about-a-file-that-was-tracked-but-is-now-in-gitignore](https://stackoverflow.com/questions/1274057/how-to-make-git-forget-about-a-file-that-was-tracked-but-is-now-in-gitignore) for more info.


## Compared with <code>git rm --cached</code>
<code>git rm \<file\></code> will not only stop tracking that file but also remove it from your local machine.



