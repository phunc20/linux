### Sometimes merely typing `conda` on terminal 
the shell will complain about not recognizing what `conda` is

```bash
~/ ❯❯❯ conda
-bash: conda: command not found
~/ ❯❯❯
```

In this case, if you're using arch linux, you may try `~/.config/miniconda3/bin/conda` instead.


### Conda environment
```bash
~/browser-tabs/brave ❯❯❯ ~/.config/miniconda3/bin/conda env list
# conda environments:
#
base                  *  /home/phunc20/.config/miniconda3
pDL                      /home/phunc20/.config/miniconda3/envs/pDL





```


### How to create a new environment, say `d2l`
In short,
- **Yes**: `conda create --name d2l` 
- **No**: `conda env create --name d2l` 

**Note** how this is different from the way we had created the `pDL` environment for the course NYU DL 2020:
> **`conda env create -f environment.yml`**



```bash
~/.../linux/commands/conda ❯❯❯ ~/.config/miniconda3/bin/conda env create --help
usage: conda-env create [-h] [-f FILE] [-n ENVIRONMENT | -p PATH] [-C] [-k] [--offline] [--force] [--json] [-v] [-q]
                        [remote_definition]

Create an environment based on an environment file

Options:

positional arguments:
  remote_definition     remote environment definition / IPython notebook

optional arguments:
  -h, --help            Show this help message and exit.
  -f FILE, --file FILE  environment definition file (default: environment.yml)
  --force               force creation of environment (removing a previously existing environment of the same name).

Target Environment Specification:
  -n ENVIRONMENT, --name ENVIRONMENT
                        Name of environment.
  -p PATH, --prefix PATH
                        Full path to environment location (i.e. prefix).

Networking Options:
  -C, --use-index-cache
                        Use cache of channel index files, even if it has expired.
  -k, --insecure        Allow conda to perform "insecure" SSL connections and transfers. Equivalent to setting 'ssl_verify'
                        to 'false'.
  --offline             Offline mode. Don't connect to the Internet.

Output, Prompt, and Flow Control Options:
  --json                Report all output as json. Suitable for using conda programmatically.
  -v, --verbose         Use once for info, twice for debug, three times for trace.
  -q, --quiet           Do not display progress bar.

examples:
    conda env create
    conda env create -n name
    conda env create vader/deathstar
    conda env create -f=/path/to/environment.yml
    conda env create -f=/path/to/requirements.txt -n deathstar
    conda env create -f=/path/to/requirements.txt -p /home/user/software/deathstar
~/.../linux/commands/conda ❯❯❯ ~/.config/miniconda3/bin/conda env create --name d2l

SpecNotFound: Invalid name, try the format: user/package

~/.../linux/commands/conda ❯❯❯ vim ~/todo/
alarm-clock      i3lock           mpv              rsync            wifi-dmenu
bash             ibus             notify-send      texlive-install  youtube-dl
dwm              miniconda        ranger           torrent          zsh
~/.../linux/commands/conda ❯❯❯ vim ~/todo/miniconda
~/.../linux/commands/conda ❯❯❯ eval "$(/home/phunc20/.config/miniconda3/bin/conda shell.bash hook)"
~/.../linux/commands/conda ❯❯❯ conda deactivate
~/.../linux/commands/conda ❯❯❯ conda env create --name d2l

SpecNotFound: Invalid name, try the format: user/package

~/.../linux/commands/conda ❯❯❯ conda env create --name d2l -y
usage: conda-env [-h] {create,export,list,remove,update,config} ...
conda-env: error: unrecognized arguments: -y
~/.../linux/commands/conda ❯❯❯ conda-env create --name d2l
-bash: conda-env: command not found
~/.../linux/commands/conda ❯❯❯ conda env create --name d2l

SpecNotFound: Invalid name, try the format: user/package

~/.../linux/commands/conda ❯❯❯ conda create --name d2l
Collecting package metadata (current_repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.8.3
  latest version: 4.9.1

Please update conda by running

    $ conda update -n base -c defaults conda



## Package Plan ##

  environment location: /home/phunc20/.config/miniconda3/envs/d2l



Proceed ([y]/n)? y

Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate d2l
#
# To deactivate an active environment, use
#
#     $ conda deactivate

~

```



