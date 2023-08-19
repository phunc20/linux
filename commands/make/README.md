




## `cd` inside `Makefile`
One needs to use `&&` and `cd` in the same line.

Starting a new line will carry us back to the same directory as the `Makefile`
itself.

This is maybe best illustrated by some examples:


## N.B.
1. Default shell
    - The default shell inside `make` or inside Makefile is `/bin/sh`.
      In particular, there will not necessarily exsit `source` command in
      `/bin/sh`. Use `.` instead.
    - One could change this behaviour by specifying, e.g.
      ```makefile
      SHELL := /bin/bash
      ```
1. Python virtual environment in Makefile
    - Even from within the same _rule_, different lines wouldn't retain
      the same activated Python virtual environment. For example,
      ```bash
      pip_install_in_venv:
      	source some_venv_dir/bin/activate && pip install -r src/requirements.txt
      ```
      will correctly install the packages from the `requirements.txt` file
      into the virtual environment inside `some_venv_dir/` while the following
      will **not**
      ```bash
      pip_install_in_venv:
      	source some_venv_dir/bin/activate
      	pip install -r src/requirements.txt
      ```
      because, although the first line activate the venv, when we jump to
      the second line, the venv disappeared and pip installs to the outer
      Python's pip


## Ref.
1. <https://makefiletutorial.com>
