### Can be used to make sure which distro one is using
e.g.
```bash
uname -a | grep Debian && apt install tesseract-ocr
uname -a | grep "artix\|Arch Linux" && pacman -S tesseract
```
Cf. `detect_distro.sh` for one more example.

MacOS can also be detected by checking whether `uname` gives `Darwin`, which is useful
when writing a bash script across Linux and MacOS.

