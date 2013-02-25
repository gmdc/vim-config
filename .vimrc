set nocompatible               " be iMproved
filetype off                   " required! for vundle

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" rtp RunTimePath. :help 'rtp' | :help $VIMRUNTIME
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after,~/.vim/bundle/vundle/
call vundle#rc()

" My Bundles here:
"
" original repos on github
" Powerline
Bundle 'Lokaltog/vim-powerline'

" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

" Terminal Vim with 256 colors colorscheme
Bundle 'nanotech/jellybeans.vim'

" Gvim colorscheme
Bundle 'Wombat'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'


" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" allow plugins by file type
filetype on
filetype plugin on
filetype indent on

set ruler
syntax on
set visualbell

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" better buffer management
set hidden

set guifont=Inconsolata\ Medium\ 12

winpos 50 50
set number
" Managing from WM now.
"if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
"  set lines=999 columns=999
"else
  " This is console Vim.
"  if exists("+lines")
"    set lines=50
"  endif
"  if exists("+columns")
"    set columns=100
"  endif
"endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|screen-256\|256color'
	let &t_Co = 256
    colorscheme jellybeans
endif

" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

let mapleader = ","

" whitespace setup
set listchars=tab:>-,trail:·,eol:$

" enable/disable whitespaces
nmap <silent> <leader>s :set nolist!<CR>

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'

