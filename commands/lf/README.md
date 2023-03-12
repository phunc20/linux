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
     $ env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest
     go: downloading github.com/gokcehan/lf v0.0.0-20220521105417-36a7a1831658
     go: downloading golang.org/x/sys v0.0.0-20220209214540-3681064d5158
     go: downloading github.com/gdamore/tcell/v2 v2.3.1
     go: downloading golang.org/x/term v0.0.0-20210220032956-6a3ed077a48d
     go: downloading gopkg.in/djherbis/times.v1 v1.2.0
     go: downloading github.com/mattn/go-runewidth v0.0.10
     go: downloading github.com/rivo/uniseg v0.1.0
     go: downloading github.com/gdamore/encoding v1.0.0
     go: downloading golang.org/x/text v0.3.0
     go: downloading github.com/lucasb-eyer/go-colorful v1.0.3
     ```


## Shortcuts
- Show hidden files: `zh` (or from inside `lf` do `:set hidden!`)
  [The exclamation sign is there to **toggle**, w/o it you can only turn on but not off.]

