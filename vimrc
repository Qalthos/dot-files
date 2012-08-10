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
colorscheme vividchalk

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.rst match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.rst match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
