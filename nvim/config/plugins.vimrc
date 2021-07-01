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

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Emmet (HTML, CSS, JS completion)
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key=','

Plug 'mileszs/ack.vim'
let g:ackprg = 'rg --vimgrep --no-heading -S --no-ignore -g "!var" -g "!.idea" -g "!testreports" -g "!SOURCES.txt"'
cnoreabbrev Ack Ack!
nnoremap <C-g> :Ack!<Space>


" Colors... lots of them
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'KeitaNakamura/neodark.vim'
Plug 'joshdick/onedark.vim'
let g:onedark_terminal_italics = 0
let g:onedark_color_overrides = {
\ "black": {"gui": "#161616", "cterm": "255", "cterm16": "0" },
\ "vertsplit": {"gui": "#282828", "cterm": "155", "cterm16": "0" },
\ "split": {"gui": "#282828", "cterm": "155", "cterm16": "0" },
\ "cursor_grey": { "gui": "#3E4452", "cterm": "236", "cterm16": "8"},
\}


call plug#end()
