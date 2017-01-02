call plug#begin('~/.config/nvim/plugged')

" Dark powered asynchronous completion framework for nvim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

" Color scheme
Plug 'w0ng/vim-hybrid'

" Status line
Plug 'itchyny/lightline.vim'
Plug 'cocopon/lightline-hybrid.vim'

call plug#end()

" Use deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview " Don't show the scratch window on top

" Path to Python interpreter
let g:python3_host_prog = '/usr/bin/python3'

" Use color scheme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colorscheme hybrid

" Status line
let g:lightline = {}
let g:lightline.colorscheme = 'hybrid'

" Shortcuts
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
"
