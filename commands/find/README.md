### File Created btw Two Dates
```
find programming/ -newermt "2020-07-10" ! -newermt "2020-07-27" -iname "*.py"
```


### Find all hidden files in <code>$HOME</code> (and eventually copy them)
- <code>find ~ -maxdepth 1 -type f -iname ".\*"</code>
- <code>find ~ -maxdepth 1 -type f -iname ".\*" -exec cp {} . \;</code>

For example,
```
[phunc20@artichaut-x220 corbeille]$ find ~ -maxdepth 1 -type f -iname ".*"
/home/phunc20/.tmux.conf
/home/phunc20/.wget-hsts
/home/phunc20/.vimrc
/home/phunc20/.fehbg
/home/phunc20/.lesshst
/home/phunc20/.octave_hist
/home/phunc20/.scala_history
/home/phunc20/.profile
/home/phunc20/.gitconfig
/home/phunc20/.viminfo
/home/phunc20/.bashrc
/home/phunc20/.xinitrc
/home/phunc20/.gitignore
/home/phunc20/.Xauthority
/home/phunc20/.python_history
/home/phunc20/.sc-iminfo
/home/phunc20/.Xmodmap
/home/phunc20/.labelImgSettings.pkl
/home/phunc20/.sc_history
/home/phunc20/.xprofile
/home/phunc20/.bash_logout
/home/phunc20/.Xdefaults
/home/phunc20/.Xresources
/home/phunc20/.bash_history
/home/phunc20/.xscreensaver
/home/phunc20/.rnd
```


### Tar multiple folders
> **`find . -type d -iname "[A-Z]*" -exec tar jcvf {}.tar.bz2 {} \;`**

```bash
jovyan@5a767e9d926d:~/work$ find . -type d -iname "[A-Z]*" | sort
./AudioPhase
./Beatings
./DFTplots
./DFTprecision
./DTMF
./EchoCancellation
./FIR
./Fukushima
./HaarBasis
./KarplusStrong
./MiniMax
./Music
./Nonlinear
./OneBit
./Resampling
./Telephone
./Transoceanic
jovyan@5a767e9d926d:~/work$ ls -dl [A-Z]*/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 AudioPhase/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 Beatings/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 DFTplots/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 DFTprecision/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 DTMF/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 EchoCancellation/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 FIR/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 Fukushima/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 HaarBasis/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 KarplusStrong/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 MiniMax/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 07:10 Music/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 Nonlinear/
drwxrwxrwx 6 nobody nogroup 6144 Oct 22 04:10 OneBit/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 Resampling/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 Telephone/
drwxrwxrwx 3 nobody nogroup 6144 Oct 22 04:10 Transoceanic/
jovyan@5a767e9d926d:~/work$ find . -type d -iname "[A-Z]*" -exec tar jcvf {}.tar.bz2 {} \;
./DFTplots/
./DFTplots/DFTplots.ipynb
./DFTplots/.ipynb_checkpoints/
./DFTplots/.ipynb_checkpoints/DFTplots-checkpoint.ipynb
./DFTplots/piano.wav
./Telephone/
./Telephone/dataTransmission.ipynb
./Telephone/.ipynb_checkpoints/
./Telephone/.ipynb_checkpoints/channel-checkpoint.ipynb
./Telephone/.ipynb_checkpoints/dataTransmission-checkpoint.ipynb
./Telephone/channel.ipynb
./Telephone/num9.wav
...

jovyan@5a767e9d926d:~/work$ tar tvf Fukushima.tar.bz2
drwxrwxrwx nobody/nogroup    0 2020-10-22 04:10 ./Fukushima/
drwxrwxrwx nobody/nogroup    0 2020-10-22 04:10 ./Fukushima/.ipynb_checkpoints/
-rwxrwxrwx nobody/nogroup 176261 2018-10-24 22:05 ./Fukushima/.ipynb_checkpoints/Fukushima-checkpoint.ipynb
-rwxrwxrwx nobody/nogroup  47544 2018-06-01 13:08 ./Fukushima/Safecast_data.txt
-rwxrwxrwx nobody/nogroup 181038 2018-10-24 22:07 ./Fukushima/Fukushima.ipynb
```


