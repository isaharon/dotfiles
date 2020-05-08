" Don't try bo be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
    silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * silent! PlugInstall
endif

" declare plugins
silent! if plug#begin('~/.vim/plugged')

    " Standard plugins
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    
    " Extra plugins
    Plug 'vifm/vifm.vim'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vimwiki/vimwiki'
    Plug 'lervag/vimtex'

    " Theme Plugins
    Plug 'itchyny/lightline.vim'
    Plug 'kaicataldo/material.vim'

    call plug#end()
endif

" General config
set number			" Show line numbers
set linebreak			" Break lines at word (requires Wrap lines)
set showbreak=+++		" Wrap-broken line prefix
set textwidth=79		" Line wrap (number of cols)
set showmatch			" Highlight matching brace
set visualbell			" Use visual bell (no beeping)

set hlsearch			" Highlight all search results
set smartcase			" Enable smart-case search
set ignorecase			" Always case-insensitive
set incsearch			" Searches for strings incrementally

set autoindent			" Auto-indent new lines
set shiftwidth=4		" Number of auto-indent spaces
set smartindent			" Enable smart-indent
set smarttab			" Enable smart-tabs
set softtabstop=4		" Number of spaces per Tab

set wildmenu			" Auto-completion for command line
set laststatus=1		" Enable status bar in one window

set hidden			" Allow hidden buffers
set backspace=indent,eol,start	" Backspace behaviour
set colorcolumn=+1		" Display column line
set wrap linebreak nolist	" Enable wordwrap

" Disable auto-comment after pressing <ENTER>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"" Colorscheme settings

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

syntax enable
let g:material_theme_style = 'palenight'
colorscheme material
let g:lightline = {'colorscheme': 'material_vim'}

"" End colorscheme settings
