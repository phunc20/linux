

## To restrict the range
This is much like how `.gitignore` does it:
- `git st ./**/*` will list all subfiles in all subfolders

```bash
[phunc20@homography-x220t leetcode]$ git st
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        problems/

nothing added to commit but untracked files present (use "git add" to track)
[phunc20@homography-x220t leetcode]$ git st problems/**/*
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        problems/algorithm/0001-two_sum/
        problems/bash/192-word_freq/
        problems/bash/193-phone_numbers/

nothing added to commit but untracked files present (use "git add" to track)
[phunc20@homography-x220t leetcode]$ git st problems/*
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        problems/algorithm/
        problems/bash/

nothing added to commit but untracked files present (use "git add" to track)
[phunc20@homography-x220t leetcode]$
```
