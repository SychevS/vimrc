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
Plugin 'davidhalter/jedi-vim'
Plugin 'morhetz/gruvbox'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()

filetype plugin indent on

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
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

"folding (zo - fold open; zc -fold close)
set foldenable
set foldmethod=marker
set foldmarker={,}
set foldlevel=100

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

map <TAB> %
map <F2> :NERDTreeToggle<CR>
map <F3> :tabprev<CR>
map <F4> :tabnext<CR>
map <F5> :tabnew<CR>
map <F6> :set hlsearch! hlsearch?<CR>
map <F9> :w<CR>:vert term<CR>g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o out *.cpp<CR>./out<CR>
