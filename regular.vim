" Don't force vim to be vi compatible.
set nocompatible

" Allow files to stay open while switching to other files.
set hidden

" Highlight search results, turned off for a search by :noh.
set hlsearch

" Show incomplete commands in the bottom of normal mode.
set showcmd

" Only add a single space after '.' etc.
set nojoinspaces

" Leave 5 lines above/below when scrolling.
set scrolloff=5

" Turn on line numbering.
set number
set relativenumber

" Set background colour.
set background=dark

" Use the wal colorscheme from the plugin if available.
colorscheme wal

" Disable the highlighting of concealed items.
highlight Conceal ctermbg=none

" Enable syntax highlighting.
syntax enable

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

" Format files linux style.
if &modifiable==1
    set fileformat=unix
endif

" Save swap files in the same directory as the edited file.
set directory=.,$MyVimRuntime/swap,/var/tmp
set backupdir=.,$MyVimRuntime/backup,/tmp

" Enable plugins to be loaded based on file type.
filetype plugin on
