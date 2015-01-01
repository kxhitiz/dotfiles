execute pathogen#infect()
call pathogen#helptags()

syntax enable
colorscheme solarized

if has('gui_running')
  set background=light
else
  set background=dark
endif

set nocompatible

let mapleader = ","

"set runtimepath^=~/.vim/bundle/ctrlp.vim

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

"Enable syntax highlighting
syntax on

autocmd VimEnter * NERDTree " Open nerdtree by default
autocmd VimEnter * wincmd p " Move cursor main window
autocmd FileType crontab setlocal nowritebackup

" Better command-line completion
set wildmenu

"Display line number
set number

" Show partial commands in the last line of the screen
set showcmd

set cursorline

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" " mapping of <C-L> below)
set hlsearch

" start search as you type
set incsearch             

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" " the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Instead of failing a command because of unsaved changes, instead raise a
" " dialogue asking if you wish to save changed files.
set confirm


" Enable use of the mouse for all modes
" set mouse=a
"
"------------------------------------------------------------
"" Indentation options {{{1
"
" Indentation settings for using 2 spaces instead of tabs.
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2

set autoread

"let g:airline_powerline_fonts = 4 
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

"------------------------------------------------------------
"" Mappings {{{1
"
"" Useful mappings

inoremap ;; <esc> 

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


noremap <Leader>m :NERDTreeToggle<CR>
noremap <Leader>c :close<CR>
noremap <Leader>v :e ~/.vimrc<CR>

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

