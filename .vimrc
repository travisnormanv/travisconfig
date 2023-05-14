inoremap jj <Esc>
nnoremap o o<Esc>
nnoremap O O<Esc>

set nu
set relativenumber

syntax enable

" fix syntax color issues on vim
set background=dark
" set hlsearch

" Change error highlighting to make it readable
hi Error ctermfg=15 ctermbg=8

" add philippine pesos sign
call digraph_set('Ph', '₱')

