"" Vundle Configuration{{{
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
Bundle "Raimondi/delimitMate"
Bundle "bling/vim-airline"
"Bundle 'jelera/vim-javascript-syntax'
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

"}}}
"" Folding {{{
	" vimrc {{{
		autocmd FILETYPE vim set foldmethod=marker
	"}}}
"}}}
"" customizations{{{
	" leader key timeout {{{
		set updatetime=4000
	"}}}

	" Color scheme{{{
		syntax enable
		set background=dark
		colorscheme solarized
	"}}}

	" Enable utf-8{{{
		set enc=utf-8
	"}}}

	" Enable 256 color schemes{{{
		set t_Co=256
	"}}}

	" Disable swap files{{{
	"set noswapfile
	"}}}

	" Set autoindent{{{
		set autoindent
	"}}}

	" size of a hard tabstop{{{
		set tabstop=2
	"}}}

	" size of an indent{{{
		set shiftwidth=2
	"}}}

	"Tabs {{{
		" a combination of spaces and tabs are used to simulate tab stops at a width
		" other than the (hard)tabstop
		set softtabstop=2

		set smarttab
	"}}}

	" Enable hidden buffers{{{
		set hidden
	"}}}

	" Don't redraw when executing macros (for performance){{{
		set lazyredraw
	"}}}

	" Show info about the ongoing command in the bottom right of the screen{{{
		set showcmd
	"}}}

	" Open NerdTree on startup{{{
	"au VimEnter *  NERDTree
	"}}}

	" Extend the commands history to 1000 instead of 20{{{
		set history=1000
	"}}}

	" Disable the menus in gvim{{{
		set guioptions-=m  "remove menu bar
		set guioptions-=T  "remove toolbar
		set guioptions-=r  "remove right-hand scroll bar
		set guioptions-=L  "remove left-hand scroll bar
	"}}}

	" Font settings{{{
		"set guifont=Monospace:h9
	"}}}

	" Disable the mouse in gui{{{
		set mouse=""
	"}}}

	" Enable vim-airline{{{
		set laststatus=2
		let g:airline_powerline_fonts=1
		let g:airline#extensions#whitespace#enabled = 0
		let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
		let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
	"}}}
"}}}
"" Key mappings{{{

	" window split movement{{{
		nnoremap <C-J> <C-W>j
		nnoremap <C-H> <C-W>h
		nnoremap <C-K> <C-W>k
		nnoremap <C-L> <C-W>l
		inoremap <C-J> <C-W>j
		inoremap <C-H> <C-W>h
		inoremap <C-K> <C-W>k
		inoremap <C-L> <C-W>l
		vnoremap <C-J> <C-W>j
		vnoremap <C-H> <C-W>h
		vnoremap <C-K> <C-W>k
		vnoremap <C-L> <C-W>l
	"}}}

	" Folding {{{
		nnoremap <Space> zA
		vnoremap <Space> zA
	"}}}

	""" Function keys{{{
		inoremap <F1> <ESC>
		nnoremap <F1> <ESC>
		vnoremap <F1> <ESC>
		nnoremap <F2> :NERDTreeToggle<CR>
		inoremap <F2> :NERDTreeToggle<CR>
		vnoremap <F2> :NERDTreeToggle<CR>
		nnoremap <F3> :GundoToggle<CR>
		vnoremap <F3> :GundoToggle<CR>
		nnoremap <F5> :e<CR>
		vnoremap <F5> :e<CR>
		inoremap <F5> <ESC>:e<CR>a
	"}}}

	"""   Compilation key mappings {{{
		"LATEX {{{
			autocmd FILETYPE tex nnoremap <F9> :!texi2pdf *.tex<CR>
			autocmd FILETYPE tex vnoremap <F9> :!texi2pdf *.tex<CR>
			autocmd FILETYPE tex inoremap <F9> <ESC>:!texi2pdf *.tex<CR>a
		"}}}

		" C and C++ {{{
			autocmd FILETYPE cpp nnoremap <F9> :!g++ -o app *.cpp<CR>
			autocmd FILETYPE cpp vnoremap <F9> :!g++ -o app *.cpp<CR>
			autocmd FILETYPE c nnoremap <F9> :!g++ -o app *.c
			autocmd FILETYPE c vnoremap <F9> :!g++ -o app *.c
	"}}}


	"These are project specific and will be removed when the projects are done
	"Set for the mycripplewars project{{{
		"nnoremap <F12> :cd /var/www/mycripplewars/advanced/<Cr>
		"inoremap <F12> :cd /var/www/mycripplewars/advanced/<Cr>
		"vnoremap <F12> :cd /var/www/mycripplewars/advanced/<Cr>
	"}}}
"}}}
