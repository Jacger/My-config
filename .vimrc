set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'mbbill/undotree'
Plugin 'posva/vim-vue'
Plugin 'rizzatti/dash.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/tComment'
Plugin 'vim-scripts/taglist.vim'
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
" let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme gruvbox

filetype on
filetype plugin on
filetype plugin indent on

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

let g:ale_lint_on_save=1
let g:ale_lint_on_text_changed=0

" let vim_markdown_preview_toggle=2
" let vim_markdown_preview_hotkey='<C-m>'
" let vim_markdown_preview_github=1

let g:tagbar_ctags_bin='/usr/local/bin/ctags'

map <C-C-i> :tabn<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
