## Installation
`pacman -S pdftk`

## What for?
- Create a new pdf file with some of the unwanted pages removed from the original pdf file.

## Usage
The following example creates a new pdf file named `momentum_optim.pdf` which is one page less than the original file `polyak64.pdf`. (rm p.1)
```bash
~/downloads ❯❯❯ pdftk polyak64.pdf cat 2-18 output momentum_optim.pdf
~/downloads ❯❯❯ dusort polyak64.pdf momentum_optim.pdf
916K    momentum_optim.pdf
952K    polyak64.pdf
~/downloads ❯❯❯
```
