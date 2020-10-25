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

