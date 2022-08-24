set number
set mouse=a
set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set autoindent " Automatically indent when you type
set shiftwidth=4
set tabstop=4
set softtabstop=4
set hlsearch
set clipboard=unnamed

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'github/copilot.vim', { 'branch': 'release' }
Plug 'https://github.com/tpope/vim-commentary.git'
call plug#end()

" Set color theme
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
colorscheme material

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Auto-open NERDTree in "EVERY" tab
autocmd BufWinEnter * NERDTreeMirror

" Toggle NERDTree: ctrl + b
nmap <C-b> :NERDTreeToggle<CR>

" Open file in new tab: ctrl + o
nmap <C-o> :tabnew<CR>

" Switch to previous tab
nmap <C-p> :tabprevious<CR>

