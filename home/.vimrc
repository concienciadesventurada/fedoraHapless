syntax on
filetype plugin indent on

set ts=2 sts=2 sw=2 et ai si
set relativenumber " nu absolute number lines "

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'chrisbra/colorizer'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'

endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

colorscheme default

set t_Co=256
set t_ut=
let g:codedark_transparent=1
colorscheme codedark

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
