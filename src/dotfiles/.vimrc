set nocompatible
filetype off

" --- Plugins --- 
" Installing vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-repeat'
Plugin 'guns/vim-sexp'
call vundle#end()

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus

" --- Keybinds  ---
nnoremap Y y$
imap <C-y> <C-r>"

" --- Leader stuff --- 
let mapleader = "\<Space>"
nnoremap <leader>fs :w<CR>
nnoremap <leader>fed :so %<CR>
nnoremap <leader>w <C-w>
nnoremap <leader>p :call PareditToggle()<CR>
" sexp
nmap <leader>st <Plug>(sexp_emit_head_element)
nmap <leader>sb <Plug>(sexp_emit_tail_element)
nmap <leader>sc <Plug>(sexp_capture_prev_element)
nmap <leader>ss <Plug>(sexp_capture_next_element)

" --- Other stuff --- 
" Disable auto-comments 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Nicer searching
set ignorecase
set smartcase
set incsearch
