let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'habamax/vim-asciidoctor'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-python/python-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
call plug#end()

set nocompatible
filetype plugin indent on
syntax on

set encoding=utf-8
set updatetime=300 "recommended from coc

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

set ruler
set autoindent
set expandtab
set softtabstop =2
set shiftwidth  =2
set shiftround

set backspace   =indent,eol,start
set hidden
set laststatus  =2
set display     =lastline

set showmode
set showcmd

set incsearch
set hlsearch

set ttyfast
set lazyredraw

set splitbelow
set splitright

set cursorline
set wrapscan
set report      =0
set synmaxcol   =200

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'space:•,tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif


" ---- Color scheme ----
set termguicolors

set background=dark "light or dark
let g:everforest_background = 'soft'
colorscheme everforest

let g:python_highlight_all = 1

" JS, TS stuff
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" Best practice to avoid secret leak
set noswapfile
set nobackup
set nowritebackup
set viminfo=
set clipboard=

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
