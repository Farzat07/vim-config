" Set MyVimConfig and MyVimRuntime env variables so that all scripts can use
" the same value.
let $MyVimConfig=$DOTFILESDIR . "/vim"
let $MyVimRuntime=$MyVimConfig . "/runtime"
set runtimepath^=$MyVimRuntime runtimepath+=$MyVimRuntime/after
let &packpath = &runtimepath
source $MyVimConfig/main.vim
