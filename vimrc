set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set expandtab

" Unmap <F1>
:map <F1> <Esc>
:imap <F1> <Esc>

:filetype on
:syntax on

:filetype indent on
set foldmethod=syntax

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

