lua require("mason").setup()
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
"  ########## DEFAULT SETTINGS

set number
set relativenumber
set nocompatible
set showmatch
set nohls
set incsearch
set tabstop=4 softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
" set cc=80
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set cursorline
set ttyfast
" set spell
set backupdir=~/.cache/vim
set splitright
set splitbelow
set guicursor=
set noerrorbells
set scrolloff=10
set signcolumn=yes

" ########## KEY MAPPINGS

let mapleader=" "
" move line or visually selected block - alt+j/k
inoremap <down> <Esc>:m .+1<CR>==gi
inoremap <up> <Esc>:m .-2<CR>==gi
vnoremap <down> :m '>+1<CR>gv=gv
vnoremap <up> :m '<-2<CR>gv=gv

" move between panes to left/bottom/top/right
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" move split panes to left/bottom/top/right
nnoremap <C-h> <C-w>H
nnoremap <C-j> <C-w>J
nnoremap <C-k> <C-w>K
nnoremap <C-l> <C-w>L

" Press i to enter insert mode, and kj to exit insert mode.
:inoremap kj <Esc>

" ########## PLUGINS

call plug#begin()
    Plug 'scrooloose/nerdtree' " nerd-tree
    Plug 'vim-airline/vim-airline' " vim-airline
    Plug 'jiangmiao/auto-pairs' " auto bracket pairs
    Plug 'gruvbox-community/gruvbox' " community maintained gruvbox theme
    Plug 'tpope/vim-fugitive' " git wrapper
    Plug 'neovim/nvim-lspconfig' " language server protocol for auto-completion and syntax checking
    Plug 'williamboman/mason.nvim' " bootstrap installer for nvim-lsp
call plug#end()

" ########## DEFAULT THEMES

colorscheme gruvbox

" ########## VIM AIRLINE SETTINGS

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'

" ########## STARTUP COMMANDS

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

autocmd * VimEnter
    :PlugInstall

