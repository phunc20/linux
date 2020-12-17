`screenkey` can be used, when screencasting, to show your audience which
keystrokes you have done, often used in youtube videos.
- install by `pacman -Ss screenkey`


## Usage
- simply `screenkey` in dmenu or a terminal will display your keystrokes from the point on
- `screenkey -t 5` will keep the displayed keystrokes for 5 sec. (`-t` for `--timeout`)
  - `screenkey -t -1` keep displayed indefinitely, i.e. forever.
  - The default, i.e. w/o specifying the `-t` option is `-t `
- `Shift` is usually omitted, but you can ask `screenkey` to display it by **`screenkey --vis-shift`**
- cf. more by `screenkey --help`
