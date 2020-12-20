```bash
[phunc20@headache-x220tablet corbeille]$ la ~/.config/ranger/
[phunc20@headache-x220tablet corbeille]$ ranger --copy-config=all
creating: /home/phunc20/.config/ranger/rifle.conf
creating: /home/phunc20/.config/ranger/commands.py
creating: /home/phunc20/.config/ranger/commands_full.py
creating: /home/phunc20/.config/ranger/rc.conf
creating: /home/phunc20/.config/ranger/scope.sh

> Please note that configuration files may change as ranger evolves.
  It's completely up to you to keep them up to date.

> To stop ranger from loading both the default and your custom rc.conf,
  please set the environment variable RANGER_LOAD_DEFAULT_RC to FALSE.
[phunc20@headache-x220tablet corbeille]$ la ~/.config/ranger/
commands_full.py  commands.py  rc.conf  rifle.conf  scope.sh

sudo pacman -S ueberzug


[phunc20@headache-x220tablet ranger]$ vim scope.sh
      video/*)
          # Thumbnail
          ffmpegthumbnailer -i "${FILE_PATH}" -o "${IMAGE_CACHE_PATH}" -s 0 && exit 6
          exit 1;;






[phunc20@headache-x220tablet ranger]$ vim rc.conf
#set preview_images_method w3m
set preview_images_method ueberzug


```


### Show hidden files
Two ways
01. Making it permanent: In your **`rc.conf`** (under `$HOME/.config/ranger/`), add the line
  ```
  set show_hidden true
  ```
02. Press **`zh`** to toggle btw showing/hiding hidden files

**cf.** [https://wiki.archlinux.org/index.php/ranger](https://wiki.archlinux.org/index.php/ranger)

## `cd` to the last folder after quitting `ranger`
cf. [https://wiki.archlinux.org/index.php/Ranger#Synchronize_path](https://wiki.archlinux.org/index.php/Ranger#Synchronize_path)<br>
Briefly speaking, it's about a shell script containing a function named `ranger_cd` (or `ranger-cd` in Gentoo) that allows `cd` functionality after quitting `ranger`.
- Arch Linux
- Gentoo
  ```bash
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ ls
  README.bz2                       plugin_fasd_add.py.bz2     plugin_new_macro.py.bz2           rifle_different_file_opener.conf.bz2
  bash_automatic_cd.sh.bz2         plugin_file_filter.py.bz2  plugin_new_sorting_method.py.bz2  rifle_sxiv.sh.bz2
  bash_subshell_notice.sh.bz2      plugin_hello_world.py.bz2  plugin_pmount.py.bz2              vim_file_chooser.vim.bz2
  plugin_avfs.py.bz2               plugin_ipc.py.bz2          plugin_pmount_dynamic.py.bz2
  plugin_chmod_keybindings.py.bz2  plugin_linemode.py.bz2     rc_emacs.conf.bz2
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ # vim is able to view and edit .bz2 file
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ # However, `source` cannot. See below.
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ vim bash_automatic_cd.sh.bz2
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ source bash_automatic_cd.sh.bz2
  -bash: BZh91AY: command not found
  -bash: SYShb7: command not found
  [1]+  Exit 127                BZh91AY
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ tar x bash_automatic_cd.sh.bz2
  tar: Refusing to read archive contents from terminal (missing -f option?)
  tar: Error is not recoverable: exiting now
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ tar xvf bash_automatic_cd.sh.bz2
  tar: This does not look like a tar archive
  tar: Skipping to next header
  tar: Exiting with failure status due to previous errors
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ # I forgot that to decompress .bz2 one uses bunzip2
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ ll bash_*
  -rw-r--r-- 1 root root 202 Sep 10  2018 bash_subshell_notice.sh.bz2
  -rw-r--r-- 1 root root 427 Sep 10  2018 bash_automatic_cd.sh.bz2
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ bunzip2 bash_automatic_cd.sh.bz2
  bunzip2: Can't create output file bash_automatic_cd.sh: Permission denied.
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ sudo bunzip2 bash_automatic_cd.sh.bz2
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ source bash_automatic_cd.sh
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ ran
  ran        ranger     ranger-cd  ranlib
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ ranger-cd
  leif@CenterLap-x1carbon / $ cd -
  /usr/share/doc/ranger-1.9.2/examples
  leif@CenterLap-x1carbon /usr/share/doc/ranger-1.9.2/examples $ vim ~/.bashrc
  leif@CenterLap-x1carbon ~/pictures/screenshots $ grep ran ~/.bashrc
  #alias ran="ranger"
  source /usr/share/doc/ranger-1.9.2/examples/bash_automatic_cd.sh
  alias ran="ranger-cd"
  leif@CenterLap-x1carbon / $
  ```



