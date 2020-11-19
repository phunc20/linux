### The story
I had this `hw-ipynb/` directory where locally on my machine I have commited twice. It was a month later that
I wanted to create a github repo named `dsp` and to put `hw-ipynb` inside `dsp/epfl/2020/`, while keeping the
entire history of the commits/logs. Here below is what I found helpful on stackoverflow, and the command line
history of me doing it.

cf. [https://stackoverflow.com/questions/37471740/how-to-copy-commits-from-one-git-repo-to-another](https://stackoverflow.com/questions/37471740/how-to-copy-commits-from-one-git-repo-to-another)

```bash
~/.../dsp/epfl/2020 ❯❯❯ git remote add trial /home/phunc20/downloads/hw-ipynb/
~/.../dsp/epfl/2020 ❯❯❯ git remote
origin
trial
~/.../dsp/epfl/2020 ❯❯❯ git remote update
Fetching origin
Fetching trial
warning: no common commits
remote: Enumerating objects: 142, done.
remote: Counting objects: 100% (142/142), done.
remote: Compressing objects: 100% (136/136), done.
remote: Total 142 (delta 4), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (142/142), 29.56 MiB | 5.81 MiB/s, done.
Resolving deltas: 100% (4/4), done.
From /home/phunc20/downloads/hw-ipynb
 * [new branch]      master     -> trial/master
~/.../dsp/epfl/2020 ❯❯❯ git br
* main
~/.../dsp/epfl/2020 ❯❯❯ ls
~/.../dsp/epfl/2020 ❯❯❯ cd ../../../
~/git-repos/phunc20 ❯❯❯ ls
algorithms  dsp  julia  linux  ML-frameworks  python  pytorch-Deep-Learning  scala  volumes.md  youtube
~/git-repos/phunc20 ❯❯❯ cd dsp/
~/git-repos/phunc20/dsp ❯❯❯ ls
epfl  LICENSE
~/git-repos/phunc20/dsp ❯❯❯ git log --all --oneline --graph --decorate
* 3d456e0 (HEAD -> main, origin/main, origin/HEAD) Initial commit
* b45eaf4 (trial/master) 1h lecture on DTMF.ipynb
* 535e2c9 1st commit for the EPFL DSP course, almost none of the jupyter notebooks is modified except for DTMF.ipynb which is just
 slightly modified.
~/git-repos/phunc20/dsp ❯❯❯ git cherry-pick 535e2c9
[main fe6eb99] 1st commit for the EPFL DSP course, almost none of the jupyter notebooks is modified except for DTMF.ipynb which is
 just slightly modified.
 Date: Wed Oct 28 15:57:45 2020 +0700
 120 files changed, 19308 insertions(+)
 create mode 100755 AudioPhase/.ipynb_checkpoints/phase-checkpoint.ipynb
 create mode 100755 AudioPhase/clarinet.png
 create mode 100755 AudioPhase/phase.ipynb
 create mode 100755 AudioPhase/piano.jpg
 create mode 100755 AudioPhase/piano.wav
 ...
~/git-repos/phunc20/dsp ❯❯❯ ls
AudioPhase  DFTplots      DTMF              epfl  Fukushima  KarplusStrong  MiniMax  Nonlinear  Resampling  Telephone
Beatings    DFTprecision  EchoCancellation  FIR   HaarBasis  LICENSE        Music    OneBit     tar         Transoceanic
~/git-repos/phunc20/dsp ❯❯❯ git log --all --oneline --graph --decorate
* fe6eb99 (HEAD -> main) 1st commit for the EPFL DSP course, almost none of the jupyter notebooks is modified except for DTMF.ipyn
b which is just slightly modified.
* 3d456e0 (origin/main, origin/HEAD) Initial commit
* b45eaf4 (trial/master) 1h lecture on DTMF.ipynb
* 535e2c9 1st commit for the EPFL DSP course, almost none of the jupyter notebooks is modified except for DTMF.ipynb which is just
 slightly modified.
~/git-repos/phunc20/dsp ❯❯❯ git cherry-pick b45eaf4
[main 17a09db] 1h lecture on DTMF.ipynb
 Date: Wed Oct 28 16:07:38 2020 +0700
 2 files changed, 48 insertions(+), 16 deletions(-)
~/git-repos/phunc20/dsp ❯❯❯ git log --all --oneline --graph --decorate
* 17a09db (HEAD -> main) 1h lecture on DTMF.ipynb
* fe6eb99 1st commit for the EPFL DSP course, almost none of the jupyter notebooks is modified except for DTMF.ipynb which is just
 slightly modified.
* 3d456e0 (origin/main, origin/HEAD) Initial commit
* b45eaf4 (trial/master) 1h lecture on DTMF.ipynb
* 535e2c9 1st commit for the EPFL DSP course, almost none of the jupyter notebooks is modified except for DTMF.ipynb which is just
 slightly modified.
~/git-repos/phunc20/dsp ❯❯❯ git st
On branch main
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
~/git-repos/phunc20/dsp ❯❯❯ ls
AudioPhase  DFTplots      DTMF              epfl  Fukushima  KarplusStrong  MiniMax  Nonlinear  Resampling  Telephone
Beatings    DFTprecision  EchoCancellation  FIR   HaarBasis  LICENSE        Music    OneBit     tar         Transoceanic
~/git-repos/phunc20/dsp ❯❯❯ git push origin
Username for 'https://github.com': phunc20
Password for 'https://phunc20@github.com':
Enumerating objects: 150, done.
Counting objects: 100% (150/150), done.
Delta compression using up to 4 threads
Compressing objects: 100% (138/138), done.
Writing objects: 100% (149/149), 29.56 MiB | 1.98 MiB/s, done.
Total 149 (delta 5), reused 138 (delta 3), pack-reused 0
remote: Resolving deltas: 100% (5/5), done.
To https://github.com/phunc20/dsp.git
   3d456e0..b4fbcd2  main -> main
~/git-repos/phunc20/dsp ❯❯❯ git remote
origin
trial
~/git-repos/phunc20/dsp ❯❯❯ git remote rm trial
~/git-repos/phunc20/dsp ❯❯❯ git remote
origin
```


