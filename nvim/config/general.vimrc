if has('vim_starting')
  set nocompatible               " Be iMproved
endif
set clipboard=unnamedplus
set hidden
set title
set fillchars+=vert:\|
set titleold="Terminal"
set titlestring=%F
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set incsearch
set hlsearch
set number
set ignorecase
set nobackup
set noswapfile
set smartcase
set wrap
set timeoutlen=1000 ttimeoutlen=50
set scrolloff=8
set spelllang=en
set ruler
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0
set shiftwidth=4
set statusline+=%F\ %l\:%c
set expandtab
set autoindent
set smartindent
set nocindent
set synmaxcol=360
set lazyredraw
set fileformats=unix,dos,mac
set splitbelow
set splitright
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set cmdheight=2
set shortmess+=c
set signcolumn=yes

let mapleader = ","

map Q <NOP>

" Color things
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
syntax on
colorscheme onedark
set background=dark


filetype plugin indent on
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
