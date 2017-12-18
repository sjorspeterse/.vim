" Let's save undo info!
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

set undodir=~/.vim/undo-dir
set undofile

"Syntax highlighting on
syntax on

"Setting the colorscheme to monokai
colorscheme monokai

"Setting line numbers
set number
