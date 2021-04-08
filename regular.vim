" Don't force vim to be vi compatible.
set nocompatible

" Allow files to stay open while switching to other files.
set hidden

" Highlight search results, turned off for a search by :noh.
set hlsearch

" Highlight matches while searching.
set incsearch

" Show the cursor position.
set ruler

" Show incomplete commands in the bottom of normal mode.
set showcmd

" Only add a single space after '.' etc.
set nojoinspaces

" Show a menu when using tab completion.
set wildmenu

" Leave 5 lines above/below when scrolling.
set scrolloff=5

" Turn on line numbering.
set number

" Turn on auto and smart indenting.
"set autoindent
"set smartindent

" Set background colour.
set background=dark

" Use the wal colorscheme from the plugin if available.
colorscheme wal

" Disable the highlighting of concealed items.
highlight Conceal ctermbg=none

" Enable syntax highlighting.
syntax enable

" Auto-update files on change.
set autoread

" Wrap text.
set wrap

" Max length of lines.
"set textwidth=79

" Add a red column after textwidth limit.
set colorcolumn=+1

" Set the indentation to be 4 spaces.
set tabstop=4
set shiftwidth=0
set softtabstop=-1
set expandtab

" Set encoding to UTF-8.
set encoding=utf-8

" Format files linux style.
set fileformat=unix

" Save swap files in the same directory as the edited file.
set directory=.
set backupdir=.

" Enable plugins to be loaded based on file type.
filetype plugin on
