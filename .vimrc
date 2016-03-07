execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized

set nocompatible

let mapleader = " "

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

"Enable syntax highlighting
syntax on

"autocmd VimEnter * NERDTree " Open nerdtree by default
autocmd VimEnter * wincmd p " Move cursor main window
autocmd FileType crontab setlocal nowritebackup

" Better command-line completion
set wildmenu

"Display line number
set relativenumber
" Show partial commands in the last line of the screen
set showcmd

set cursorline

set colorcolumn=80

set clipboard=unnamed

set lazyredraw "redraw only when we need to.

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
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

" Strip whitespace
autocmd FileType javascript,java,html,ruby autocmd BufWritePre <buffer> StripWhitespace

"" Useful mappings

inoremap ;; <esc> 

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>c :close<CR>
nnoremap <Leader>v :e ~/.vimrc<CR>

"Flush
nnoremap ff :CommandTFlush<CR> "Flush commandT
nnoremap nf R<CR> "Flush neardTree

" Tabs
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabedit .<cr>
nnoremap tx :tabclose<CR>

" Rails Specifics/ and more
map <Leader>ag :Ag 
map <Leader>ac :Econtroller application<cr>
map <Leader>b :!bundle 
map <Leader>bo :!bundle open 
map <Leader>cdb :e config/database.yml<cr>
map <Leader>ec :Econtroller 
map <Leader>em :Emodel 
map <Leader>er :e config/routes.rb<cr>
map <Leader>ev :Eview 
map <Leader>gem :e Gemfile<cr>
map <Leader>sc :Eschema<cr>
map <Leader>ctg :!ctags -R .<cr>
map <Leader>al :A<cr>

"clear search
map <backspace> :noh<cr>

" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

set pastetoggle=<F2> "fixes indentation while copy pasting

