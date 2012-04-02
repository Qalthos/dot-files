set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent

:filetype on
:syntax on

:filetype indent on

" set textwidth=80

set background=dark
" let g:solarized_termcolors=16
" colorscheme solarized
colorscheme vividchalk

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.rst match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.rst match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

