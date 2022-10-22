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
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-python/python-syntax'
Plug 'wfxr/protobuf.vim'
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
call plug#end()

set nocompatible
filetype plugin indent on
syntax on

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
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif


" ---- Color scheme ----
set termguicolors

set background=dark "light or dark
let g:everforest_background = 'soft'
colorscheme everforest

let g:python_highlight_all = 1

" ESLint, ALE and Prettier
let g:jsx_ext_required = 0
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--no-semi --single-quote --trailing-comma none'
let g:ale_linter_aliases = {'svelte': ['css', 'javascript']}
let g:ale_linters = {'svelte': ['stylelint', 'eslint'], 'javascript': ['standard']}
let g:ale_fixers = {'svelte': ['eslint', 'prettier', 'prettier_standard'], 'javascript': ['prettier', 'eslint'], '*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'

let g:vim_svelte_plugin_load_full_syntax = 1
" Best practice to avoid secret leak
set noswapfile
set nobackup
set nowritebackup
set viminfo=
set clipboard=

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
