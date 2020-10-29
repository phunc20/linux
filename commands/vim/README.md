## Search and Replace
- <code>:s/google/duckduckgo/gc</code> search and replace for <b>the present line</b>
- <code>:5,27s/google/duckduckgo/gc</code> for <b>line 5 until line 27</b>
  - <code>:5,27s/google/duckduckgo/g</code>
  - <code>:5,27s/google/duckduckgo</code>
- <code>:,27s/google/duckduckgo/gc</code> for <b>the present line up until line 27</b>
- <code>:%s/google/duckduckgo/gc</code> for <b>every single line</b>


## Reload
Sometimes the file you are viewing and editing in <code>vim</code> may be being modified at the same time by other processes (e.g.  log files, you <code>cp</code> other file to it in another terminal, etc.)

To reload that file to its latest state, just type (in <code>vim</code>'s navigation mode) <code><b>:e</b></code> (i.e. <code><b>:edit</b></code>).


## `number` and `relativenumber`
- [https://vim.fandom.com/wiki/Display_line_numbers](https://vim.fandom.com/wiki/Display_line_numbers)


## Plugins
- **vim-plug**: [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)
