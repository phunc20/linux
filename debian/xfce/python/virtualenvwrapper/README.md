```
# For python virtualenv
export WORKON_HOME="/home/phunc20/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
source "$HOME/.local/bin/virtualenvwrapper.sh"
```
should be put in `~/.bash_profile` and not in `~/.bashrc` (neither in `~/.profile`)
