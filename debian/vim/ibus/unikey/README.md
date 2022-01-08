## Troubleshoot
1. Typing Vietnamese using Ibus Unikey in (neo)vim under Debian behaves weird. (year 2020-2022)
  - More precisely, the system seems to cut the word typed through the keyboard and spaced badly. One rescue is perhaps to type down arrow every time one finishes a word, but this is not convenient.
  - A workaround to circumvent this mystery is to type in Vim in another way, e.g. through [Vim's keymap](https://github.com/vim/vim/tree/master/runtime/keymap)
    - If one uses neovim, then download the keymap file from the link above and put it under `~/.config/nvim/runtime/keymap/vietnamese-telex_utf-8.vim.txt`
    - If one uses vanilla vim, then under `~/.vim/runtime/keymap/vietnamese-telex_utf-8.vim.txt`
