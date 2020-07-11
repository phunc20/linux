" Luke Smith's LaTeX vim setting
"execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible    " be iMproved. Obligatory
filetype off        " Obligatory

" The following line is to have the vim editor display
" line numbers.
set number

" I do not understand fully the following 2 lines' meaning,
" I just know it is about tab and space.
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 




" The following line means:
" maps every single tab stroke to 4 spaces.
" When using this line, you can no longer type \t or ^I,
" i.e. tab, using the tab key on your keyboard.
" However, you can disactivate it if you'd like to have
" ^I in your document.
" N.B. This line was originally deviced to solve the
" compatibility with Nguyen Quang Anh's spyder editor tab/space.
set tabstop=4 shiftwidth=4 expandtab

" Share system clipboard btw vim and other apps
set clipboard=unnamedplus

set autoindent

" https://github.com/tpope/vim-markdown
"let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" ================================================================
" thoughtbot's suggestion (max cantor)
" enter the current millenium
"set nocompatible

" enable syntax and plugins (for netrw) 
" and some more colors
syntax enable

"filetype plugin on
" ---------------------------------------

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
"set path+=**

" Display all matching files when we tab complete
"set wildmenu

" NOW WE CAN:
" - Hit tab to find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer
" ---------------------------------------



" ================================================================


" Scala Syntax Highlighting
au BufRead,BufNewFile *.scala set filetype=scala
au! Syntax scala source ~/.vim/syntax/scala.vim

" Highlight search results
"set hlsearch

" Folding -- save view
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

"" The next line makes code comments in vim in a blue color that is more readable
"" (The default blue is less readable)
set background=dark



"" Auto kill after some file update
"" sxhkd
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &

"" Spell check (English) set to F6
map <F6> :setlocal spell! spelllang=en_us<CR>
"map <F2> :r $HOME/programming/html/templates/pre-only.html<CR>
"autocmd FileType md nnoremap ;r :r ~/programming/html/templates/pre-only.html<C-R><Esc>
nnoremap ;r Gi<Enter><Enter><Enter><Esc>:r ~/programming/html/templates/pre-only.html
"autocmd FileType md nnoremap ;r Gi<Enter><Enter><Enter><Esc>:r ~/programming/html/templates/pre-only.html
"autocmd FileType md nnoremap ;r :r ~/programming/html/templates/pre-only.html
"" html tags
""autocmd FileType html,md inoremap ;p <p></p><Esc>FpT>i
"autocmd FileType html inoremap ;p <p></p><Esc>FpT>i
"autocmd FileType md inoremap ;p <p></p><Esc>FpT>i
"autocmd FileType md inoremap ;c <pre></pre><Esc>FpT>i
""autocmd FileType html,md inoremap ;em <em></em><Esc>?eT>i
"autocmd FileType html inoremap ;em <em></em><Esc>?eT>i
autocmd FileType html,markdown,python inoremap ;em <em></em><Esc>FeT>i
autocmd FileType html,markdown,python inoremap ;b <b></b><Esc>FbT>i
autocmd FileType html,markdown,python inoremap ;c <code></code><Esc>?c<CR>T>i
autocmd FileType html,markdown,python inoremap ;pre <pre><CR><CR></pre><Esc>ki

