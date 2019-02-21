set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'universal-ctags/ctags'
Plugin 'vim-scripts/Conque-GDB'

" colorschemes
Plugin 'lifepillar/vim-solarized8'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:ycm_use_clangd = "Always"
let g:ycm_clangd_binary_path = "~/ycm_temp/llvm_root_dir/bin/clangd"
let g:ycm_server_python_interpreter = "/usr/bin/python"

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
set ignorecase

"folding (zo - fold open; zc -fold close)
set foldenable
set foldmethod=marker
set foldmarker={,}
set foldlevel=10

"mappings
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

map <F2> :NERDTreeToggle<CR>
map <F3> :tabprev<CR>
map <F4> :tabnext<CR>
map <F5> :tabnew<CR>
map <F6> :TlistToggle<CR>
map <F12> :YcmCompleter GoToDefinition<CR>
map <leader>jd :YcmCompleter GoToDeclaration<CR>
map <leader>ji :YcmCompleter GoToInclude<CR>
map <leader>jt :YcmCompleter GoTo<CR>
map <F7> :ConqueGdb<CR>
