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

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Bundles

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Better file browser
Bundle 'scrooloose/nerdtree'

" Powerline
Bundle 'Lokaltog/vim-powerline'

" Terminal Vim with 256 colors colorscheme
Bundle 'nanotech/jellybeans.vim'

" Code and files fuzzy finder
Bundle 'kien/ctrlp.vim'

" Gvim colorscheme
Bundle 'Wombat'

" Tab list panel
"Bundle 'kien/tabman.vim'

" CTags browser
Bundle 'majutsushi/tagbar'

" Autocompletion
Bundle 'AutoComplPop'

" MiniBufExpl 
Bundle 'fholgado/minibufexpl.vim'

" More specific pydoc plugin (i will try later)
"Bundle 'vim-scripts/pydoc'


" ** Python Plugins **

" Python mode
Bundle 'klen/python-mode'


" ** Perl plugins **

" Compile (perl -Wc) and parse errors and warnings
Bundle 'vim-scripts/perl.vim'

" Perl omnicompletion
Bundle 'c9s/perlomni.vim'


" ** Matlab plugins
Bundle 'vim-scripts/MatlabFilesEdition'


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

" Managing from Openbox now.
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

" incremental search
set incsearch

" highlighted search results
set hlsearch

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

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

" Windows Navigation 
map <C-Right> <c-w>l
map <C-Left> <c-w>h
map <C-Up> <c-w>k
map <C-Down> <c-w>j
imap <C-Right> <ESC><c-w>l
imap <C-Left> <ESC><c-w>h
imap <C-Up> <ESC><c-w>k
imap <C-Down> <ESC><c-w>j

" Tab Navigation
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
"map <C-S-Right> :tabn<CR>
"imap <C-S-Right> <ESC>:tabn<CR>
"map <C-S-Left> :tabp<CR>
"imap <C-S-Left> <ESC>:tabp<CR>

"
" TabMan
"
" :TMToggle
"let g:tabman_toggle = 'tl'
" :TMFocus to give focus to/open the TabMan window.
"let g:tabman_focus  = 'tf'

"
" MiniBufExpl
"

" Open and/or goto Explorer
map <leader>bb :MiniBufExplorer<CR>

" Close MBE Window
map <leader>bc :CMiniBufExplorer<CR>

" Force Update MBE Window
map <leader>bu :UMiniBufExplorer<CR>

" Always visible
let g:miniBufExplorerMoreThanOne=1

" Vertical and Right Window 
let g:miniBufExplSplitToEdge = 0 
let g:miniBufExplSplitBelow=1

" Vertical List Char Width
let g:miniBufExplVSplit = 20   " column width in chars

let g:miniBufExplMaxSize = 30 

" Enable <C-TAB> and <C-S-TAB> to a function that
" will bring up the next or previous buffer in the current window
let g:miniBufExplMapCTabSwitchBufs = 1

" If you use other explorers like TagList you can (As of 6.2.8) put:
let g:miniBufExplModSelTarget = 1

" There is a VIM bug that can cause buffers to show up without
" their highlighting. The following setting will cause MBE to
" try and turn highlighting back on
let g:miniBufExplForceSyntaxEnable = 1

" Automatic Close After Buffer Selection
let g:miniBufExplCloseOnSelect = 0

"
" Tagbar
"
" toggle Tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on Tagbar open
let g:tagbar_autofocus = 1

" NERDTree (better file browser) toggle
map <F3> :NERDTreeToggle<CR>
" Ignore files on NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

"
" Powerline
"
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'

"
" CtrlP
"
" open file (like the original :e) but with recursive and fuzzy file name matching.
" allows you to open the selected file on a new tab with Ctrl-t!
let g:ctrlp_map = '<leader>e'

" fuzzy symbol finder (classes, methods, variables, functions, ...) on the current file
nmap <leader>g :CtrlPBufTag<CR>

" fuzzy symbol finder on all buffers 
nmap <leader>G :CtrlPBufTagAll<CR>

" fuzzy text finder on all the opened files
nmap <leader>f :CtrlPLine<CR>

" fuzzy buffer finder
nmap <leader>be :CtrlPBuffer<CR>

" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" CtrlP with default text
nmap <leader>wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap <leader>wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap <leader>wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>

" Don't change working directory
let g:ctrlp_working_path_mode = 0
" Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

"
" OmniCppComplete
"
" colors and settings of autocompletion
highlight Pmenu ctermbg=4 guibg=LightGray
" highlight PmenuSel ctermbg=8 guibg=DarkBlue guifg=Red
" highlight PmenuSbar ctermbg=7 guibg=DarkGray
" highlight PmenuThumb guibg=Black
" use global scope search
let OmniCpp_GlobalScopeSearch = 1
" 0 = namespaces disabled
" 1 = search namespaces in the current buffer
" 2 = search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 2
" 0 = auto
" 1 = always show all members
let OmniCpp_DisplayMode = 1
" 0 = don't show scope in abbreviation
" 1 = show scope in abbreviation and remove the last column
let OmniCpp_ShowScopeInAbbr = 0
" This option allows to display the prototype of a function in the abbreviation part of the popup menu.
" 0 = don't display prototype in abbreviation
" 1 = display prototype in abbreviation
let OmniCpp_ShowPrototypeInAbbr = 1
" This option allows to show/hide the access information ('+', '#', '-') in the popup menu.
" 0 = hide access
" 1 = show access
let OmniCpp_ShowAccess = 1
" This option can be use if you don't want to parse using namespace declarations in included files and want to add
" namespaces that are always used in your project.
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" Complete Behaviour
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0
let OmniCpp_MayCompleteScope = 0
" When 'completeopt' does not contain "longest", Vim automatically select the first entry of the popup menu. You can
" change this behaviour with the OmniCpp_SelectFirstItem option.
let OmniCpp_SelectFirstItem = 0

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType cpp set omnifunc=cppcomplete#CompleteCPP
autocmd FileType c set omnifunc=ccomplete#Complete

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

