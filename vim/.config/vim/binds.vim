map <Space> <leader>
map <leader><Space> :
map <leader>c :w !wc -w <CR>
inoremap kj <ESC>
noremap <Left> :wincmd h<CR>
noremap <Down> :wincmd j<CR>
noremap <Up> :wincmd k<CR>
noremap <Right> :wincmd l<CR>
noremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd l<CR>
noremap <leader>f :find 
noremap <leader>F :grep <cword><CR>
noremap <leader>g :Goyo<CR>
noremap <leader>b :buf 
noremap <leader>B :YcmCompleter GoTo<CR>
noremap <leader>n :noh<CR>
noremap <leader>w :w<CR>
noremap <leader>W :wa<CR>
noremap <leader>p :call PythonHelp()<CR>
noremap <leader>q :q<CR>
noremap <leader>Q :qa<CR>
noremap <leader>x :x<CR>
noremap <leader>X :xa<CR>
noremap <leader>e :new \| r!
noremap <leader>s :mks $XDG_CACHE_HOME/vim/lastsession!<CR>
noremap <leader>S :source $XDG_CACHE_HOME/vim/lastsession<CR>
noremap <leader>R :source $MYVIMRC<CR>
noremap <leader>t :tabedit 
noremap <leader>T :tabfind 
noremap <leader>u :GundoToggle<CR>
noremap <leader>1 :call NumberToggle()<CR>
noremap <leader>J :JSHint<CR>
noremap <leader>o :CtrlPMixed<CR>

if has('nvim')
  noremap <leader>e :term fish -l<CR>
  tnoremap <Esc> <C-\><C-n>
endif
