set ts=2
set sts=2
set shiftwidth=2
set expandtab

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'gyim/vim-boxdraw'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-python/python-syntax'
call plug#end()

" ---- Color scheme ----
if has('termguicolors')
  set termguicolors
endif

set background=light " dark possible
let g:everforest_background = 'soft'
colorscheme everforest

let g:python_highlight_all = 1
