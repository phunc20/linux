## To install `ueberzug` on Fedora
- `sudo dnf install python3-devel` first
  - otherwise, `pip install --user ueberzug` will complain about not being able to find `Python.h`
- Then `pip install --user ueberzug` to install it under `~/.local/lib/` instead of under some system wide path

```bash
~/.../phunc20/DL/backprop ❯❯❯ sudo dnf install python3-devel
~/.../phunc20/DL/backprop ❯❯❯ pip install --user ueberzug
Collecting ueberzug
  Using cached ueberzug-18.1.9.tar.gz (36 kB)
Requirement already satisfied: python-xlib in /home/phunc20/.local/lib/python3.9/site-packages (from ueberzug) (0.29)
Requirement already satisfied: pillow in /usr/lib64/python3.9/site-packages (from ueberzug) (7.2.0)
Requirement already satisfied: docopt in /home/phunc20/.local/lib/python3.9/site-packages (from ueberzug) (0.6.2)
Requirement already satisfied: attrs>=18.2.0 in /home/phunc20/.local/lib/python3.9/site-packages (from ueberzug) (20.3.0)
Requirement already satisfied: six>=1.10.0 in /usr/lib/python3.9/site-packages (from python-xlib->ueberzug) (1.15.0)
Using legacy 'setup.py install' for ueberzug, since package 'wheel' is not installed.
Installing collected packages: ueberzug
    Running setup.py install for ueberzug ... done
Successfully installed ueberzug-18.1.9
```
