call plug#begin()
Plug 'bronson/vim-trailing-whitespace'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'rizzatti/dash.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/tComment'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'

" Plugin for nodejs and reactjs
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

call plug#end()

syntax enable
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme gruvbox

set number
set encoding=utf8

set showcmd
set cursorline
set hlsearch

set backspace=2
set mouse=a

set shiftwidth=2
set expandtab
set tabstop=2

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:coc_disable_startup_warning = 1

let g:ale_lint_on_save=1
let g:ale_lint_on_text_changed=0

map <C-C-i> :tabn<CR>
map <C-n> :NERDTreeToggle<CR>

" coc settings
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-json',
  \ ]

let NERDTreeShowHidden=1 " show hidden files in the NERDTree explorer window

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
