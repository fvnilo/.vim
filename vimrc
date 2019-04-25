"" Text editing
set number " line numbers
set tabstop=2 shiftwidth=2 " tabs are 2 spaces
set backspace=indent,eol,start
set encoding=utf-8 " encoding
set clipboard=unnamed " use system clipboard
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on

"" Searching
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

"" Color scheme
colorscheme zenburn 
set t_Co=256

"" Map Ctrl + hjkl to switch buffers easily
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Map F2 to Format JSON files
"" Thanks to: https://github.com/floranf/"
map <F2> :%!python -mjson.tool<CR>

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-go goodies
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor     

" vim-airline
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1

" Disable arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

syntax on
