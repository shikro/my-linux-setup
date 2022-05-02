"General
filetype plugin indent on
set nocompatible
syntax enable

"Encoding
scriptencoding utf-8
set encoding=utf-8

"Indent
set smartindent
set copyindent

"Tabs
set smarttab
set expandtab
set tabstop=5
set shiftwidth=5
set softtabstop=5

"Searching
set ignorecase
set smartcase
set hlsearch

"Splits
set splitbelow
set splitright

"Visual
set number
set wrap linebreak nolist
set showtabline=0
set cursorline
set scrolloff=5

"Colors
"set t_Co=256
set termguicolors
set t_ut=""

"Fold based off the syntax highlighting
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
set nofoldenable

"-----Plugins-----

"VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

"Plugging of plugins
call plug#begin('~/.vim/bundle')

"Color scheme
Plug 'ErichDonGubler/vim-sublime-monokai'
"State line
Plug 'vim-airline/vim-airline'
"Autocomplete of code
Plug 'ycm-core/YouCompleteMe'

call plug#end()

"Turn on color scheme
colorscheme sublimemonokai

"YCM settings
let g:ycm_error_symbol = '●'
let g:ycm_warning_symbol = '●'
let g:ycm_complete_in_comments = 0
let g:ycm_log_level = 'info' "switch to debug for more info
let g:ycm_disable_for_files_larger_than_kb = 1000
let g:ycm_auto_hover=''
nmap \ <plug>(YCMHover)
highlight Pmenu guifg=#879088 guibg=#272727

