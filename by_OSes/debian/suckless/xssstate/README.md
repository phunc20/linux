When Debian users download `xssstate` and trying to run the `make` command,
they might encounter an error message saying that the system does not have
`X11/extensions/scrnsaver.h`. To obtain that header file, do
```bash
sudo apt install libxss-dev
```
