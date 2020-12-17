## Search and Replace
- <code>:s/google/duckduckgo/gc</code> search and replace for <b>the present line</b>
- <code>:5,27s/google/duckduckgo/gc</code> for <b>line 5 until line 27</b>
  - <code>:5,27s/google/duckduckgo/g</code>
  - <code>:5,27s/google/duckduckgo</code>
- <code>:,27s/google/duckduckgo/gc</code> for <b>the present line up until line 27</b>
- <code>:,+1s/google/duckduckgo/gc</code> for <b>the present line and the next line</b>
  - <code>:,+9s/google/duckduckgo/gc</code> for <b>the present line and the next 9 lines</b>
- <code>:%s/google/duckduckgo/gc</code> for <b>every single line</b>


## Reload
Sometimes the file you are viewing and editing in <code>vim</code> may be being modified at the same time by other processes (e.g.  log files, you <code>cp</code> other file to it in another terminal, etc.)

To reload that file to its latest state, just type (in <code>vim</code>'s navigation mode) <code><b>:e</b></code> (i.e. <code><b>:edit</b></code>).


## `number` and `relativenumber`
- [https://vim.fandom.com/wiki/Display_line_numbers](https://vim.fandom.com/wiki/Display_line_numbers)


## Plugins
- **vim-plug**: [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

## Fold
- manual
    - `zf0`: fold the **current line**
    - `zd`: unfold 

## `vim-surround`
Sometimes it might feel cumbersome to have to
01. visually select text
02. put them btw `**`'s to make them **bold**

Here is [a good stackoverflow post on this](https://stackoverflow.com/questions/32769488/double-vim-surround-with).

Basically it's saying
01. Put this line in your `.vimrc` (or `init.vim` if you use neovim)
  ```
  autocmd FileType markdown,octopress let b:surround_{char2nr('b')} = "**\r**"
  ```
02. After that you can visually select some text and then press `Sb`
03. To make a single word bold, just do `ysiwb`
04. Recall:
  - To surround a selection w/ parentheses, you do the selection and then `S)`
  - To surround a word w/ parentheses, you do `ysiw)`
  - If you want, you can also do with 4 words using `ys4wb` or `ys4w)`

### Installation of `vim-surround`
- via `vim-plug`
  ```
  call plug#begin('~/.local/share/nvim/plugged')
  Plug 'tpope/vim-surround'  " Es buena idea agregar una descripción del plugin
  Plug 'chrisbra/Colorizer'
  Plug 'JuliaEditorSupport/julia-vim'
  call plug#end()
  ```
- [https://github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)

## Misc.
- `va}` (or similarly `va)`) will **visual select** all the content within curly brackets `{}` (or `()`)
- `:,+3` the **current line along with the following 3 lines**, e.g. `:,+3s/google/duckduckgo/g` (**replacement**), `:,+7fold` (**fold**)
    - You may as well try `:,-3`



