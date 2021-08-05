### Can be used to make sure which distro one is using
e.g.
```bash
uname -a | grep Debian && apt install tesseract-ocr
uname -a | grep "artix\|Arch Linux" && pacman -S tesseract
```
Cf. `detect_distro.sh` for one more example.


