set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI settings

" Favorite Color Scheme
if has("gui_running")
  colorscheme torte
endif

" display 80th column
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

set invlist  " show hidden chars
set number   " Enable ine Numbers

" MBP Touch Bar https://github.com/macvim-dev/macvim/pull/715
" aunmenu TouchBar.//

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functionality

if has("autocmd")
  " Use filetype detection and file-based automatic indenting.
  filetype plugin indent on

  " Use actual tab chars in Makefiles.
  autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
else
  " use 2 spaces instead of tabs
  set tabstop=2      " show \t as 2 spaces
  set softtabstop=2  " how many chars to delete by when indented
  set expandtab      " use spaces instead of \t
  set shiftwidth=2   " sets the width of an indent
  set smarttab       "
endif

" auto indent new lines
set autoindent

" dont keep a backup file
set nobackup
set nowritebackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

"call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set diffexpr=MyDiff()

function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

