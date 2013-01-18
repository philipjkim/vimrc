set nocompatible              " Use vim defaults
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-ragtag'
Bundle 'tsaleh/vim-matchit'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle 'garbas/vim-snipmate'
Bundle 'vim-scripts/a.vim'

filetype plugin indent on

"set ls=2                      " Always show status line
set showcmd                   " Show incomplete commands
set scrolloff=3               " Keep 3 lines when scrolling
set ruler                     " Show the cursor position all the time
set title                     " Show title in console title bar
set hid                       " Change buffer without saving
set showmatch                 " Show matching bracets
 
set ts=2                      " Numbers of spaces of tab character
set sw=2                      " Numbers of spaces to (auto)indent
set et                        " Tabs are converted to spaces, use only when required
set sts=2                     " Soft tab stop
set smartindent               " Smart indent
set autoindent
set nocindent
set wrap
 
set hlsearch                  " Highlight searches
set incsearch                 " Do incremental searching
 
if has("autocmd")
"au FileType cpp,c,java,sh,pl,php,python,ruby set autoindent
"au FileType cpp,c,java,sh,pl,php,py,rb set smartindent
au FileType cpp,c,java,sh,pl,php set cindent
au BufRead *.py set cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufRead *.rb set cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
"au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"au BufRead *.rb set smartindent cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
endif
 
syntax on
"set background=dark
"hi Normal ctermfg=grey ctermbg=darkgrey
hi PreProc ctermfg=magenta
hi Statement ctermfg=darkYellow
hi Type ctermfg=blue
hi Function ctermfg=blue
hi Identifier ctermfg=darkBlue
hi Special ctermfg=darkCyan
hi Constant ctermfg=darkCyan
hi Comment ctermfg=darkGreen
au BufRead,BufNewFile *.rb hi rubySymbol ctermfg=green

colorscheme slate

" NERDTree
map <silent> \n :NERDTreeMirrorToggle<CR>
map <silent> \m :NERDTreeFind<CR>
let NERDTreeWinPos              = 'left'
let NERDTreeChDirMode           = 0
let NERDTreeIgnore              = ['\.vim$', '\~$', '\.pyo$', '\.pyc$', '\.svn[\//]$', '\.swp$']
let NERDTreeSortOrder           = ['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let NERDTreeHighlightCursorline = 1
let NERDTreeShowFiles           = 1 " Show hidden files, too
let NERDTreeShowHidden          = 1
let NERDTreeMinimalUI           = 1 " Hide 'up a dir' and help message
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup     = 1
let g:nerdtree_tabs_open_on_new_tab         = 1
let g:nerdtree_tabs_smart_startup_focus     = 1
let g:nerdtree_tabs_meaningful_tab_names    = 1
let g:nerdtree_tabs_synchronize_view        = 1
au vimenter * NERDTree
au vimenter * wincmd l
