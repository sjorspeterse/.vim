" Let's save undo info!
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

set undodir=~/.vim/undo-dir
set undofile

"Syntax highlighting on
syntax on

" tells vim to apply the indentation of the current line to the next 
" (created by pressing enter in insert mode or with O or o in normal mode).
set autoindent

" reacts to the syntax/style of the code you are editing (especially for C). 
" When having it on you also should have autoindent on.
set smartindent

"Setting the colorscheme to monokai
colorscheme monokai

"Setting line numbers
set number
