## Concepts
- Selection (i.e. `xclip -selection`)
    - Primary (default)
        - To paste from the primary selection in Linux: `Shift-Insert`
    - Secondary
        - To paste from the primary selection in Linux: `???`
    - Clipboard
        - This is what most people think of when referring to clipboard
        - To paste from the primary selection in Linux: `Ctrl-v`


## Usage
- **`xclip -se c`** is a shorthand for `xclip -selection clipboard`
- At least two ways to copy text using `xclip`
  01. pipe into `xclip`, e.g. `cat ~/.ssh/id_rsa.pub | xclip -se c`
  01. file direction, e.g. `xclip -se c < ~/.ssh/id_rsa.pub`

## copy an image (file) to clipboard
**`xclip -selection clipboard -t image/png -i 2020-12-26-14h10m14s-screenshot.png`**









