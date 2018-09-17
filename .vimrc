let $VIMRUNTIME = $HOME.'/.vim'
filetype on

"encoding
set encoding=utf8
set termencoding=utf8
set fileencoding=utf8
set fileformat=unix

"highlight
hi Normal ctermbg=black ctermfg=lightgrey
hi Comment ctermfg=grey cterm=italic
hi Statement ctermfg=darkblue cterm=bold
hi Constant ctermfg=lightmagenta cterm=bold
hi LineNr ctermfg=darkgrey
hi PreProc ctermfg=grey
hi Type ctermfg=darkblue cterm=bold

"tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

"setup
set nu
set ignorecase

"folding (zo - fold open; zc -fold close)
set foldenable
set foldmethod=indent
set foldlevel=0

"mappings
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

map <F2> :NERDTreeToggle<CR>
map <F3> :tabprev<CR>
map <F4> :tabnext<CR>
map <F5> :tabnew<CR>
map <F6> :TlistToggle<CR>
