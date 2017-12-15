"         o             
"   _  _  _   
"   |  |_|  / |/ |/ |  
"    \/  |_/  |  |  |_/
"  


set nocompatible

set guicursor=
set shell=bash

if empty(glob("$HOME/.config/nvim/autoload/plug.vim"))
  execute "!curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim"
endif

call plug#begin("$HOME/.local/share/vim/plugins")
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'

Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlPMixed' }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'python-mode/python-mode', { 'for': 'python' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
call plug#end()

let g:tex_flavor='latex'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = "~/.config/vim/.ycm_extra_conf.py"
let g:gruvbox_contrast_dark = 'medium'
let g:ctrlp_arg_map = 1

source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/binds.vim

syntax on
colorscheme peachpuff
set background=dark
set t_ut=

au BufNewFile,BufRead *.tex,*.md,*.rst call WrapOn()
au BufNewFile,BufRead *.src set filetype=fortran
au BufNewFile,BufRead *.fcm set filetype=fortran
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl
au BufNewFile,BufRead *.pp set filetype=puppet

filetype plugin indent on
set incsearch
set hlsearch
set scrolloff=2
set ignorecase
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
set laststatus=2
set nowrap
set relativenumber
set modeline
set cursorline
set clipboard+=unnamed
set backspace+=start,eol,indent
set omnifunc=syntaxcomplete#Complete
set wildmode=longest,list,full
set wildmenu
set showcmd
set timeoutlen=1000
set ttimeoutlen=0
set completeopt=menuone
set completefunc=youcompleteme#Complete

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

hi CursorLine term=bold cterm=bold guibg=Grey40

" Goyo
function! s:goyo_enter()
  set wrap
  set linebreak
endfunction

function! s:goyo_leave()
  set relativenumber
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
