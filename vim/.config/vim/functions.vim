function! WrapOn()
  setlocal cc=-1
  setlocal textwidth=0
  setlocal wrap linebreak nolist spell
  setlocal display+=lastline
  setlocal whichwrap+=<,>,[,]
  setlocal foldlevel=10
  let &showbreak="| "
  noremap  <buffer> <silent> <Up>   gk
  noremap  <buffer> <silent> <Down> gj
  noremap  <buffer> <silent> k      gk
  noremap  <buffer> <silent> j      gj
  noremap  <buffer> <silent> <Home> g<Home>
  noremap  <buffer> <silent> <End>  g<End>
  inoremap <buffer> <silent> <Up>   <C-o>gk
  inoremap <buffer> <silent> <Down> <C-o>gj
  inoremap <buffer> <silent> <Home> <C-o>g<Home>
  inoremap <buffer> <silent> <End>  <C-o>g<End>
endfunction

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set nonumber
    set relativenumber
  endif
endfunction
