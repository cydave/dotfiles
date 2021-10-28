" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin(expand('~/.config/nvim/autoload/plugged'))

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
map <C-p> :FZF<CR>

" Emmet (HTML, CSS, JS completion)
Plug 'mattn/emmet-vim'

" Ack but with ripgrep
Plug 'mileszs/ack.vim'
let g:ackprg = 'rg --vimgrep --no-heading -S'
cnoreabbrev Ack Ack!
nnoremap <C-g> :Ack!<Space>

" Python black
Plug 'psf/black', { 'branch': 'stable' }
let g:python_host_prog = '/home/me/.pyenv/shims/python3'
let g:python2_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/home/me/.pyenv/shims/python3'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colors
Plug 'joshdick/onedark.vim'
let g:onedark_terminal_italics = 1
" let g:onedark_color_overrides = {
"            \ "black": {"gui": "#0d1117", "cterm": "255", "cterm16": "0"},
"            \}
let g:onedark_color_overrides = {
           \ "black": {"gui": "#121212", "cterm": "255", "cterm16": "0"},
           \}

Plug 'fatih/vim-go'

Plug 'editorconfig/editorconfig-vim'

call plug#end()
