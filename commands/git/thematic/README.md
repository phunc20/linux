## Show modified and newly tracked files between 2 commits
- [Stackoverflow post ref.](https://stackoverflow.com/questions/1552340/how-to-list-only-the-file-names-that-changed-between-two-commits)

<code><b>git diff --name-only hash1 hash2</b></code>

```bash
(rlcomp2020-tf2) [phunc20@artichaut-x220 colab]$ git diff --name-only e1b6dab9f97bc e7c9121c3b2e
colab/37_shape_9x21x5/01_score_avg.py
colab/37_shape_9x21x5/02_channel234.py
colab/37_shape_9x21x5/models/02_channel234/episode-14-gold-50-avg-0.21-step-11-20200826-0658.h5
colab/37_shape_9x21x5/models/02_channel234/episode-145-gold-100-avg-0.52-step-9-20200826-0658.h5
colab/37_shape_9x21x5/models/02_channel234/episode-15-gold-50-avg-0.40-step-29-20200826-0658.h5
colab/37_shape_9x21x5/models/02_channel234/episode-165-gold-17-avg-0.52-step-13-20200826-0658.h5
colab/37_shape_9x21x5/models/02_channel234/episode-170-gold-50-avg-0.53-step-13-20200826-0658.h5
colab/37_shape_9x21x5/models/02_channel234/episode-2-gold-50-avg-0.42-step-10-20200826-0020.h5
colab/37_shape_9x21x5/models/02_channel234/episode-29-gold-50-avg-0.42-step-12-20200826-0020.h5
colab/37_shape_9x21x5/models/02_channel234/episode-31-gold-50-avg-0.52-step-24-20200826-0020.h5
colab/37_shape_9x21x5/models/02_channel234/episode-36-gold-100-avg-0.43-step-18-20200826-0658.h5
colab/37_shape_9x21x5/models/02_channel234/episode-39-gold-50-avg-0.51-step-12-20200826-0658.h5
colab/37_shape_9x21x5/models/02_channel234/log-20200826-0019.txt
colab/37_shape_9x21x5/models/02_channel234/log-20200826-0020.txt
colab/37_shape_9x21x5/models/02_channel234/log-20200826-0658.txt
```

<b>Another option</b>: <code><b>git diff --stat hash1 hash2</b></code>

```bash
(rlcomp2020-tf2) [phunc20@artichaut-x220 colab]$ git diff --stat e1b6dab9f97bc e7c9121c3b2e
 colab/37_shape_9x21x5/01_score_avg.py                                                            |  1125 ----
 colab/37_shape_9x21x5/02_channel234.py                                                           |  1205 ----
 colab/37_shape_9x21x5/models/02_channel234/episode-14-gold-50-avg-0.21-step-11-20200826-0658.h5  |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-145-gold-100-avg-0.52-step-9-20200826-0658.h5 |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-15-gold-50-avg-0.40-step-29-20200826-0658.h5  |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-165-gold-17-avg-0.52-step-13-20200826-0658.h5 |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-170-gold-50-avg-0.53-step-13-20200826-0658.h5 |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-2-gold-50-avg-0.42-step-10-20200826-0020.h5   |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-29-gold-50-avg-0.42-step-12-20200826-0020.h5  |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-31-gold-50-avg-0.52-step-24-20200826-0020.h5  |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-36-gold-100-avg-0.43-step-18-20200826-0658.h5 |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/episode-39-gold-50-avg-0.51-step-12-20200826-0658.h5  |   Bin 843520 -> 0 bytes
 colab/37_shape_9x21x5/models/02_channel234/log-20200826-0019.txt                                 |     0
 colab/37_shape_9x21x5/models/02_channel234/log-20200826-0020.txt                                 | 17494 ---------------------------------------------------
 colab/37_shape_9x21x5/models/02_channel234/log-20200826-0658.txt                                 |  3360 ----------
 15 files changed, 23184 deletions(-)
```

