## Usage
- **`xclip -se c`** is a shorthand for `xclip -selection clipboard`
- At least two ways to copy text using `xclip`
  01. pipe into `xclip`, e.g. `cat ~/.ssh/id_rsa.pub | xclip -se c`
  01. file direction, e.g. `xclip -se c < ~/.ssh/id_rsa.pub`











