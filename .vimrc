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
    Plug 'lervag/vimtex'
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

    " Theme Plugins
    Plug 'itchyny/lightline.vim'
    Plug 'kaicataldo/material.vim'

    call plug#end()
endif

filetype plugin on
syntax enable

" General config
set number			" Show line numbers
set linebreak			" Break lines at word (requires Wrap lines)
set showbreak=+++		" Wrap-broken line prefix
set textwidth=80		" Line wrap (number of cols)
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
set wrap nolist			" Enable wordwrap 
set encoding=utf-8 
autocmd FileType * set formatoptions=tcrqn21j " Perssonal format options

"" Colorscheme settings

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

let g:material_theme_style = 'palenight'
colorscheme material
let g:lightline = {'colorscheme': 'material_vim'}

"" End colorscheme settings

" Vimtex settings
let g:tex_flavor='latex'	" In case .tex is identified as .plaintex
let g:vimtex_quickfix_mode=0	" Quickfix window never opened/closed automatically
let g:vimtex_view_method='zathura' " Use Zathura as viewer application

set conceallevel=1	    " Recommended settings
let g:tex_conceal="abdgm"   " Requires tex-conceal
" Fixes compilation error
let g:vimtext_compiler_latexmk = {
    \ 'build_dir': 'output',
\}

" Leader shortcuts
nmap <Leader>s :nohls<CR>
