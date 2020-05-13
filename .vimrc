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

    " Theme Plugins
    Plug 'itchyny/lightline.vim'
    Plug 'kaicataldo/material.vim'

    call plug#end()
endif

" General config
set backspace=indent,eol,start	" Backspace behaviour
set history=1000                " Bigger history, default is 50
set showcmd			            " Show incomplete commands at bottom
set showmode			        " Show current mode at bottom
set autoread			        " Re-read files if unmodified in vim
set hidden			            " Allow hidden buffers

" User Interface
set laststatus=2		        " Enable status bar always
set wildmenu			        " Auto-completion for command line
set cursorline			        " Highlight the line current under cursor
set number			            " Show line numbers
set linebreak			        " Break lines at word (requires Wrap lines)
set visualbell			        " Use visual bell (no beeping)
set mouse=a			            " Enable mouse for scrolling and resizing
set background=dark		        " Colors for dark background
set title			            " Set window's title
set showbreak=+++		        " Wrap-broken line prefix
set textwidth=80		        " Line wrap (number of cols)
set showmatch			        " Highlight matching brace
set colorcolumn=+1		        " Display column line

" Swap files and backup
set directory=$HOME/.vim/swp//	" // uses absolute path when creating file
if !isdirectory($HOME . "/.vim/swp")
    call mkdir($HOME . "/.vim/swp" , "p")
endif
set nobackup

" Indentation 
set autoindent			        " Auto-indent new lines
filetype plugin indent on	    " Smart auto indentation (not old smartindent)
set tabstop=4			        " Show existing tab with 4 spaces width
set shiftwidth=4		        " Number of auto-indent spaces
set expandtab			        " Insert spaces instead of tab
set softtabstop=4		        " Number of spaces per Tab

" Search
set incsearch			        " Searches for strings incrementally
set hlsearch			        " Highlight all search results
set ignorecase			        " Always case-insensitive
set smartcase			        " Enable smart-case search

" Text rendering
set encoding=utf-8		        " Support Unicode
set wrap linebreak nolist	    " Enable wordwrap 
set scrolloff=3			        " Number of lines above/below cursor
set sidescrolloff=5		        " Number of lines left/right of cursor
syntax enable
autocmd FileType * set formatoptions=tcrqn21jp " Personal format options

" Misc
set confirm			            " Display confirmation when closing unsaved file
set nomodeline			        " Ignore file's mode lines; use vimrc configs
set nrformats-=octal		    " Exclude octals from number format

" netrw settings
let g:netrw_liststyle=3		    " Netrw: 0=thin, 1=long (time), 2=wide, 3=tree
let g:netrw_browse_split=4	    " Open file in split: 0=same, 1=horizontal
				                " 2=vertical, 3=new tab, 4=previous window
let g:netrw_winsize=20		    " Width of netrw split (%)

"" Colorscheme settings

" set Vim-specific sequences for RGB colors (dwm)
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

let g:material_theme_style = 'palenight'
colorscheme material
let g:lightline = {'colorscheme': 'material_vim'}

"" End colorscheme settings

" Leader shortcuts
nmap <Leader>s :nohls<CR>
