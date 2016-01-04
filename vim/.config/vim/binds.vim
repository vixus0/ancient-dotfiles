map <Space> <leader>
map <leader><Space> :
map <leader>c :w !wc -w <CR>
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
noremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
noremap <leader>l :wincmd l<CR>
noremap <leader>f $
noremap <leader>b ^
noremap <leader>n :noh<CR>
noremap <leader>w :w<CR>
noremap <leader>W :wa<CR>
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
