" Project https://github.com/junegunn/vim-plug.
" Auto-install "vim-plug" if not yet installed.
if empty(glob($MyVimRuntime . '/autoload/plug.vim'))
    silent !curl -fLo $MyVimRuntime/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins.
call plug#begin($MyVimRuntime . '/plugged')

" Specifying plugins.
Plug 'https://gitlab.com/HiPhish/info.vim.git' " Read and browse info files in Vim.
Plug 'https://github.com/ledger/vim-ledger' " Vim plugin for Ledger.
Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go development plugin for Vim.
Plug 'https://github.com/lervag/vimtex' " A modern vim plugin for editing LaTeX files.
Plug 'https://github.com/rhysd/vim-grammarous' " A powerful grammar checker for Vim using LanguageTool.
Plug 'https://github.com/Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines.
Plug 'https://github.com/sheerun/vim-polyglot' " A solid language pack for Vim.
Plug 'https://github.com/dense-analysis/ale' " Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support.
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode.
Plug 'https://github.com/Vimjas/vim-python-pep8-indent' " A nicer Python indentation style for vim.
Plug 'https://github.com/vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air.
Plug 'https://github.com/vim-airline/vim-airline-themes' " A collection of themes for vim-airline.
Plug 'https://github.com/luukvbaal/nnn.nvim.git' " File manager for Neovim powered by nnn.
Plug 'https://github.com/Farzat07/tmuxline.vim' " Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'https://github.com/mhinz/vim-signify' " Show a diff using Vim its sign column.
Plug 'https://github.com/tpope/vim-fugitive' " A Git wrapper so awesome, it should be illegal.
Plug 'https://github.com/tpope/vim-obsession' " Continuously updated session files.
Plug 'https://github.com/tpope/vim-scriptease' " A Vim plugin for Vim plugins.
Plug 'https://github.com/tpope/vim-sensible' " Defaults everyone can agree on.
Plug 'https://github.com/tpope/vim-surround' " surround.vim: quoting/parenthesizing made simple
Plug 'https://github.com/tpope/vim-commentary' " Comment stuff out.
Plug 'https://github.com/tpope/vim-abolish' " Easily search for, substitute, and abbreviate multiple variants of a word.
Plug 'https://github.com/bfredl/nvim-miniyank' " Killring-alike plugin for neovim and vim 8 with no default mappings.
Plug 'https://github.com/sophacles/vim-processing' " For processing.org
Plug 'https://github.com/suy/vim-context-commentstring' " Vim plugin that sets the value of ‘commentstring’ to a different value depending on the region of the file you are in.
Plug 'https://github.com/alvan/vim-closetag' " Auto close (X)HTML tags.
Plug 'https://github.com/dylanaraps/wal.vim' " Generate and change colorschemes on the fly.
Plug 'https://github.com/dkprice/vim-easygrep' " Fast and Easy Find and Replace Across Multiple Files.
Plug 'https://github.com/lambdalisue/suda.vim' " An alternative sudo.vim for Vim and Neovim, limited support sudo in Windows.
Plug 'https://github.com/ntpeters/vim-better-whitespace' " Better whitespace highlighting for Vim.
Plug 'https://github.com/heavenshell/vim-jsdoc', {
            \ 'for': ['javascript', 'javascript.jsx','typescript'],
            \ 'do': 'make install'
            \} " Generate JSDoc to your JavaScript code.
Plug 'https://github.com/SirVer/ultisnips' " UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
Plug 'https://github.com/mattn/emmet-vim' " emmet for vim: http://emmet.io/.
Plug 'https://github.com/honza/vim-snippets' " vim-snipmate default snippets (Previously snipmate-snippets).
Plug 'https://github.com/cstrap/python-snippets' " Python snippets for Visual Studio Code.

" Plugins not for vscode.
if !exists('g:vscode')
    Plug 'https://github.com/scrooloose/nerdtree' " A tree explorer plugin for vim.
endif

" Only if started by a browser.
if exists('g:started_by_firenvim')
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } " Embed Neovim in your browser.
endif

" Depending on whether vim or nvim is running.
if has('nvim')
    Plug 'https://github.com/Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' } " Dark powered asynchronous unite all interfaces for Neovim/Vim8.
else
    Plug 'https://github.com/Shougo/denite.nvim' " Dark powered asynchronous unite all interfaces for Neovim/Vim8.
    Plug 'https://github.com/roxma/nvim-yarp' " Yet Another Remote Plugin Framework for Neovim.
    Plug 'https://github.com/roxma/vim-hug-neovim-rpc'
endif

" Initialize plugin system.
call plug#end()
