let g:coc_global_extensions = [
    \ 'coc-pyright',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-java',
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-rls',
    \ 'coc-rust-analyzer',
    \ 'coc-r-lsp',
    \ 'coc-phpls',
    \ 'coc-solargraph',
    \ 'coc-ultisnips',
    \ 'coc-xml',
    \ 'coc-vetur',
    \ ]

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use Ctrl + j / Ctrl + k to navigate list
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

autocmd FileType python let b:coc_root_patterns = ['venv', '.venv', '.env', '.git']

" Use K (shift k) to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

