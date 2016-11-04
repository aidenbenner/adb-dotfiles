set rtp+=/usr/share/vim/autoload/

set clipboard=unnamed
"UI "
set ruler
set number
set cursorline
set nocompatible
set showcmd 

"Colors"
syntax on
set t_Co=256
colorscheme tender

"Misc "
set nocp
set wildmenu
set lazyredraw
set backspace=eol,start,indent
set autoread
set magic

"Plugins "
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
"Tabs "
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
filetype indent plugin on

"Search : 
set ignorecase
set incsearch
set hlsearch
set smartcase
set showmatch

"Folding 
set foldenable 
set foldlevelstart=10
set foldmethod=indent 

"Splits 
set splitbelow
set splitright

"Insert mode bindings "
    " Unmap arrow keys " 
    nmap <left 	<Nop>
    nmap <right	<Nop>
    nmap <up	    <Nop>
    nmap <down	<Nop>
    imap <left   	<Nop>
    imap <right 	<Nop>
    imap <up 	    <Nop>
    imap <down 	<Nop>
 
    inoremap jk <Esc>
    inoremap jj <Esc> 
"Normal mode bindings "
    " split settings " 
    nmap <S-Tab :tabn <CR>
    nnoremap <C-J <C-W><C-J>
    nnoremap <C-K <C-W><C-K>
    nnoremap <C-L <C-W><C-L>
    nnoremap <C-H <C-W><C-H>

autocmd filetype c nnoremap <F5 :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F5 :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cc nnoremap <F5 :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>



