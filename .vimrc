""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" History view
Bundle "sjl/gundo.vim"

" My bundles
Bundle "scrooloose/nerdcommenter"
Bundle "Lokaltog/vim-easymotion"
Bundle "scrooloose/nerdtree"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "altercation/vim-colors-solarized"
"Bundle "StanAngeloff/php.vim"
"Bundle "nelstrom/vim-markdown-folding"

" Optional:
Bundle "honza/vim-snippets"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nocompatible
if has("autocmd")
	filetype plugin indent on
endif

""""""""""""""""""""""""""""""""""""""""""""""""
""" Custom commands
""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile

" Set autoindent
set autoindent

" size of a hard tabstop
set tabstop=2

" size of an indent
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

set smarttab

" Enable hidden buffers
set hidden

" Don't redraw when executing macros (for performance)
set lazyredraw

" Show info about the ongoing command in the bottom right of the screen
set showcmd

" Open NerdTree on startup
"au VimEnter *  NERDTree

" Extend the commands history to 1000 instead of 20
set history=1000

" Disable the menus in gvim
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Font settings
"set guifont=Monospace:h9

" Disable the mouse in gui
set mouse=""

""""""""""""""""""""""""""""""""""""""""""""""""
""" Key mapping
""""""""""""""""""""""""""""""""""""""""""""""""

map <F2> :NERDTreeToggle<CR>
map <C-J> <C-W>j
map <C-H> <C-W>h
map <C-K> <C-W>k
map <C-L> <C-W>l
nnoremap <Space> za
vnoremap <Space> za
map <C-n> <C-x><C-p>
map <F5> :GundoToggle<CR>
