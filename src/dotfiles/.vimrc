
" --- Plugins --- 
" Installing vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'tpope/vim-repeat'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'epeli/slimux'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'moll/vim-node'
call vundle#end()

" --- General stuff ---
filetype plugin indent on
set clipboard=unnamedplus

set tabstop=4
set shiftwidth=4
set expandtab
syntax on

au BufNewFile,BufRead *.js, *.html, *.css
            \ set tabstop=2
            \ set softtabstop=2
            \ set shiftwidth=2

" --- Pretty colors ---
colo seoul256
" But don't override terminal color
hi Normal ctermbg=none

" --- Keybinds  ---
nnoremap Y y$
imap <C-y> <C-r>"
map <C-c><C-e> :SlimuxREPLSendLine<CR>
map <C-c><C-p> :SlimuxREPLSendParagraph<CR>
map <C-c><C-c> :SlimuxREPLSendBuffer<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>

" --- Leader stuff --- 
let mapleader = "\<Space>"
nnoremap <leader>fs :w<CR>
nnoremap <leader>feR :so ~/.config/nvim/init.vim<CR>:PluginInstall<CR>
nnoremap <leader>fed :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>w <C-w>
vnoremap <leader>p :!python<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bd :bd<CR>
" sexp
nmap <leader>st <Plug>(sexp_emit_head_element)
nmap <leader>sb <Plug>(sexp_emit_tail_element)
nmap <leader>sc <Plug>(sexp_capture_prev_element)
nmap <leader>ss <Plug>(sexp_capture_next_element)

nmap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" --- Folding ---
set foldmethod=indent
set foldlevel=99
nnoremap <CR> za

" --- Other stuff --- 
" Disable auto-comments 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Nicer searching
set ignorecase
set smartcase
set incsearch

"let g:slime_target = "tmux"
"let g:slime_python_ipython = 1

let g:SimpylFold_docstring_preview = 1

let g:ycm_python_binary_path = '/usr/bin/python3'

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'
