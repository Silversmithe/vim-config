set nu
colorscheme elflord

" tab control
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" Enable auto completion menu after pressing TAB (this is for when using ':')
set wildmenu
set wildmode=list:longest

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
match OverLength /\%81v./

" Switching tab pages easily
nnoremap H gT
nnoremap L gt

" On save remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" STYLE       ------------------------------------------------------------ {{{
" Coloring tab pages
hi TabLineFill ctermfg=DarkGrey ctermbg=DarkGrey
hi TabLine ctermfg=DarkMagenta ctermbg=Grey
hi TabLineSel ctermfg=LightRed ctermbg=White

" Code auto complete color
" Menu
hi Pmenu ctermbg=Grey ctermfg=DarkMagenta
hi PmenuSel ctermbg=Grey ctermfg=LightRed
" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
