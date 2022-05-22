set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'mhinz/vim-startify'

"YCM install Ubuntu 20.04:
"sudo apt install build-essential cmake python3-dev
"cd ~/.vim/bundle/YouCompleteMe
"python3 install.py --clangd-completer
"
"To generate compilation database with cmake:
"-DCMAKE_EXPORT_COMPILE_COMMANDS=ON
"compile_commands.json file will be generated
"copy or symlink the generated database to the root of your project

call vundle#end()

"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = [ '/home/athene-grey/arcadia/.ycm_extra_conf.py' ]
let g:ycm_show_diagnostics_ui = 0

let g:UltiSnipsExpandTrigger="<F1>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ ]

filetype plugin indent on

" Automatically delete trailing DOS-returns and whitespace on file open and write.
autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
" Sets the working directory to the current file's directory, useful for grep.
autocmd BufEnter * lcd %:p:h

"encoding
set encoding=utf8
set termencoding=utf8
set fileencoding=utf8
set fileformat=unix

"highlight
syntax on
set background=dark
colorscheme gruvbox

"tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"setup
set nu
set ru
set ignorecase
set backspace=indent,eol,start
set noswapfile
set mousehide
set hlsearch
set splitright
set completeopt-=preview

"folding (zo - fold open; zc -fold close)
set foldenable
set foldmethod=marker
set foldmarker={,}
set foldlevel=100

"set makeprg=ya\ make
set grepprg=grep

imap { {}<Esc>i
imap ( ()<Esc>i
imap [ []<Esc>i

map <F2> :NERDTreeToggle<CR>
map <F3> :tabprev<CR>
map <F4> :tabnext<CR>
map <F5> :tabnew<CR>
map <F6> :set hlsearch! hlsearch?<CR>
map <F7> :%s/<C-r>"//gc<left><left><left>
map <F8> :grep -rnI "<C-r>"" .<CR>:copen<CR>/<C-r>"<CR>
"map <F9> :w<CR>:make '%:p:h'<CR><CR>:vert copen 60<CR>
"map <F9> :w<CR>:vert term<CR>g++ -std=c++17 -Wall -Wextra -Wshadow -O2 -o out *.cpp<CR>./out < inp.txt<CR>
map <F10> :wa<CR>:tabdo NERDTreeClose<CR>:SSave! last-session<CR>:qall<CR>

map <F12> :YcmCompleter GoToDefinition<CR>

map <C-n> :cnext<CR>
map <C-p> :cprev<CR>

map <C-h> :FSHere<CR>
