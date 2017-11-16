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
set tags=tags,.tags

" Filetype specific tag files (This is used for global IDE tags)
autocmd FileType c              set tags=.tags_cpp,$HOME/.vim/tags/cpp
autocmd FileType cpp            set tags=.tags_cpp,$HOME/.vim/tags/cpp
autocmd FileType css            set tags=.tags_css,$HOME/.vim/tags/css
autocmd FileType java           set tags=.tags_java,$HOME/.vim/tags/java
autocmd FileType javascript     set tags=.tags_js,$HOME/.vim/tags/js
autocmd FileType html           set tags=.tags_html,$HOME/.vim/tags/html
autocmd FileType php            set tags=.tags_php,$HOME/.vim/tags/php
autocmd FileType sh             set tags=.tags_sh,$HOME/.vim/tags/sh
autocmd FileType python         set tags=.tags_python,$HOME/.vim/tags/python


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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CODING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent		" always set autoindenting on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITING 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=indent,eol,start 		" allow backspacing over everything in insert mode
set incsearch		" do incremental searching
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set foldmethod=indent foldlevel=99
nnoremap <space> za

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INTERFACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set scrolloff=8		" Offset lines from top when scrolling
set showcmd		" display incomplete commands
set ruler		" show the cursor position all the time
set number

set numberwidth=4

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

" MAKEFILE
autocmd FileType make setlocal noexpandtab
