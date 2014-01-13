syntax on
filetype on

" set background=dark
colorscheme peachpuff
hi LineNr ctermfg=23
hi ColorColumn ctermbg=0

function WrapOn()
  setlocal cc=-1
  setlocal textwidth=0
  setlocal wrap linebreak nolist
  setlocal display+=lastline
  setlocal whichwrap+=<,>,[,]
  setlocal foldlevel=10
  let &showbreak="| "
  noremap  <buffer> <silent> <Up>   gk
  noremap  <buffer> <silent> <Down> gj
  noremap  <buffer> <silent> <Home> g<Home>
  noremap  <buffer> <silent> <End>  g<End>
  inoremap <buffer> <silent> <Up>   <C-o>gk
  inoremap <buffer> <silent> <Down> <C-o>gj
  inoremap <buffer> <silent> <Home> <C-o>g<Home>
  inoremap <buffer> <silent> <End>  <C-o>g<End>
  "au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
  "augroup vimrc_autocmds
  "   autocmd BufEnter * highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
  "   autocmd BufEnter * match OverLength /\%>80v.*/
  "augroup END
endfunction

let g:tex_flavor='latex'

au BufNewFile,BufRead *.src set filetype=fortran
au BufNewFile,BufRead *.fcm set filetype=fortran
" au BufNewFile,BufRead *.tex set wrap linebreak nolist textwidth=0 wrapmargin=0
au BufNewFile,BufRead *.tex call WrapOn()
" au BufNewFile,BufRead *.tex set wrap | set linebreak | set nolist | set whichwrap+=<,>,[,] | noremap <buffer> <silent> <Up>

set nocp
filetype plugin on
filetype indent on

set incsearch
set scrolloff=2
set ignorecase
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
set laststatus=2
set nowrap
set number
set modeline
set clipboard+=unnamed
set backspace+=start,eol,indent

" color column
let &colorcolumn=join(range(81,999),",")

" vim-latex
set grepprg=grep\ -nH\ $*

map <F3> :w !detex \| wc -w <CR>
map <silent> <F4> :set wrap! linebreak! nolist! <CR> 

" Taglist
map <silent> <F9> :TlistUpdate<CR>
map <silent> <F10> :TlistToggle<CR>
let Tlist_Show_One_File=0
let Tlist_Exit_OnlyWindow=1

