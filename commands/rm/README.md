




### What will happen when adding option after `--`
`--` is supposed to mark the end of options, so what will happen if we still add options after that?

```bash
[phunc20@homography-x220t corbeille]$ ls
 Python-3.7.8     
 Python-3.7.8.tgz 
[phunc20@homography-x220t corbeille]$ rm -- -r Python-3.7.8.tgz
rm: cannot remove '-r': No such file or directory
[phunc20@homography-x220t corbeille]$ ls
 Python-3.7.8
[phunc20@homography-x220t corbeille]$
```
