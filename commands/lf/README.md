## Installation
- Arch Linux:
  1. `pacman -S go`
  1. Add in `~/.bashrc` the following lines
     ```
     GOPATH="$HOME/go"
     PATH="$PATH:$GOPATH/bin"
     ```
     That is, make sure the `~/go/bin` is in the `PATH` env var.
  1. Run the installation command given by the git repo <https://github.com/gokcehan/lf>
     As of May 2022, the command is
     ```bash
     env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest
     ```

