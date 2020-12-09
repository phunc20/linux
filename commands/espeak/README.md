## Read a text file out load
**`espeak -f <filename>`**
<br>
**cf.** `espeak --help`

```bash
[phunc20@homography-x220t corbeille]$ espeak -f abc.txt
ALSA lib pcm.c:2660:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.rear
ALSA lib pcm.c:2660:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.center_lfe
ALSA lib pcm.c:2660:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.side
ALSA lib pcm_route.c:877:(find_matching_chmap) Found no matching channel map
connect(2) call to /dev/shm/jack-1000/default/jack_0 failed (err=No such file or directory)
attempt to connect to server failed
[phunc20@homography-x220t corbeille]$ cat abc.txt
The Braille system is a way of writing things. It is named after Louis Braille, the French man who invented it. The system is used by blind people to read and write. The Braille system uses a set of raised bumps or dots that can be felt with a
finger. Each set of dots is a character in an alphabet, and the numbers and some punctuation.
[phunc20@homography-x220t corbeille]$
```
