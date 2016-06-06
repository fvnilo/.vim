"" Activate Pathogen
execute pathogen#infect()

"" Text editing
set number " line numbers
set nowrap " do not wrap lines
set tabstop=2 shiftwidth=2 " tabs are 2 spaces
set backspace=indent,eol,start
set encoding=utf-8 " encoding
filetype plugin indent on " load filetype plugins
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " do not auto add coments

"" Searching
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

"" Color scheme
colorscheme hybrid 
set t_Co=256

"" Syntax
let g:javascript_enable_domhtmlcss = 1

"" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"Read-only":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \}

"" NERDTree
" map Ctrl-N to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

syntax on
