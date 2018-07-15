" Use Vim settings, rather than Vi settings (much better!).
set nocompatible 	" Must be first
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
    finish
endif


execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let $LANG = 'en'
set langmenu=en_US.UTF-8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BACKUP/UNDO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("vms")
   set nobackup		" do not keep a backup file, use versions instead
else
   set backup		" keep a backup file (restore to previous version)
   set undofile		" keep an undo file (undo changes after closing)
endif

" swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim_swap//
" backup files (~) in a common location if possible
" set backup
set backupdir=~/.vim_backup/,~/tmp,.
" turn on undo files, put them in a common location
" set undofile
set undodir=~/.vim_undo/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTAGS/CSCOPE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Default/Generic tag file
set tags=./tags,tags


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set background=dark
"set termguicolors
colorscheme breezy
syntax enable
syntax on
filetype on 	
filetype indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=50		" keep 50 lines of command line history
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CODING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent		" always set autoindenting on
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,nbsp:␣
set list
set showmatch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTO COMPLETE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ofu=syntaxcomplete#Complete


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELL CHECKING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal spelllang=en_US
map <F5> :setlocal spell!<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITING 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start 		" allow backspacing over everything in insert mode
set incsearch		" do incremental searching

set foldmethod=indent foldlevel=99
nnoremap <space> za


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COL/ROW 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set cul
set scrolloff=3		" Offset lines from top when scrolling


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TABS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set shiftwidth=4
set tabstop=4
set smarttab

" MAKEFILE
autocmd FileType make setlocal noexpandtab
" PYTHON
autocmd FileType python setlocal expandtab


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INDENT 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent
set smartindent
set ci
set cin


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INTERFACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set showcmd		" display incomplete commands
set ruler		" show the cursor position all the time
set number

" set colorcolumn=120
autocmd BufEnter * set colorcolumn=120 " all
autocmd BufEnter *.py set colorcolumn=80 " python

set numberwidth=4

" Line wrap for comments
set formatoptions-=t


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUSLINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set path+=**		" search into subfolders
set wildmenu		" display all matching when tab 
" set autochdir " Change working dir when switching files. Use %% instead.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE BROWSING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:netrw_banner=0	" disable the banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1	" open in split mode on the right
let g:netrw_liststyle=3	" tree view


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HARD MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prevent me from using the arrow keys

let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = "Don't use this!"
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR> 	" The leader is a defined key, \ by default


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PYTHON
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" au BufNewFile,BufRead *.py 
"             \ set tabstop=4
"             \ set softtabstop=4
"             \ set shiftwidth=4
"             \ set textwidth=79
"             \ set expandtab
"             \ set autoindent
"             \ set fileformat=unix


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FileType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on
filetype indent on

