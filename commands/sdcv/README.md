## `sdcv` is a command line dictionary
You have to download additional dictionaries from elsewhere, e.g. [http://download.huzheng.org/](http://download.huzheng.org/).

Once you have the appropriate files you can extract them into /usr/share/stardict/dic.

If you don't have root permission, you can set the STARDICT_DATA_DIR environment variable. For example:

export STARDICT_DATA_DIR=$XDG_DATA_HOME
sdcv will look in the dic subdirectory so make sure that it is created and then place your dictionary files inside it.

If all is done correctly, sdcv should be able to output definitions for words passed into it.


cf. [https://wiki.archlinux.org/index.php/Sdcv](https://wiki.archlinux.org/index.php/Sdcv)

## Usage
To search a word, say **shrewd**, `sdcv shrewd`.
```bash
~ ❯❯❯ pacman -Ss sdcv
community/sdcv 0.5.3-1 [installed]
    StarDict Console Version
community/ydcv 0.7-3
    YouDao Console Version - Simple wrapper for Youdao online translate (Chinese <-> English) service API, as an alternative to the StarDict Console Version (sdcv)
~ ❯❯❯ sdcv shrewd
Found 1 items, similar to shrewd.
-->Oxford Advanced Learner's Dictionary
-->shrewd

adjective (shrewder, shrewdest)
  1  clever at understanding and making judgements about a situation
SYN ASTUTE:
a shrewd businessman * She is a shrewd judge of character.
  2  showing good judgement and likely to be right:
a shrewd guess / move * I have a shrewd idea who the mystery caller was.
    shrewdly adverb:
Linda looked at him shrewdly.
    shrewdness noun [U]:
The coach showed considerable tactical shrewdness.

~ ❯❯❯
```
