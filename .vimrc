""""""""""""""""""""""""""""""""""""""""""
"       Initial setup
""""""""""""""""""""""""""""""""""""""""""

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


""""""""""""""""""""""""""""""""""""""""""
"       Layout  
""""""""""""""""""""""""""""""""""""""""""

"Syntax highlighting on
syntax on

"Setting the colorscheme to monokai
colorscheme monokai

"Setting line numbers
set number

"Setting ruler
set ruler

" display incomplete commands
set showcmd		


""""""""""""""""""""""""""""""""""""""""""
"       Navigating  
""""""""""""""""""""""""""""""""""""""""""

"Making sure the curor stays in the middle of the screen
set scrolloff=999


""""""""""""""""""""""""""""""""""""""""""
"       Searching  
""""""""""""""""""""""""""""""""""""""""""

"Ignore case when searching
set ignorecase

"highlight searchwords while typing
set incsearch

""""""""""""""""""""""""""""""""""""""""""
"       Coding  
""""""""""""""""""""""""""""""""""""""""""

" tells vim to apply the indentation of the current line to the next 
" (created by pressing enter in insert mode or with O or o in normal mode).
" set autoindent

" reacts to the syntax/style of the code you are editing (especially for C). 
" When having it on you also should have autoindent on.
" set smartindent

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")
  

""""""""""""""""""""""""""""""""""""""""""
"       Custom keymappings  
""""""""""""""""""""""""""""""""""""""""""

" Enter in normal mode
nmap <ENTER> o<esc>

" Default register is clipboard :D
set clipboard=unnamedplus

" Don't use Ex mode, use Q for formatting
" map Q gq


""""""""""""""""""""""""""""""""""""""""""
"       Saving and backup  
""""""""""""""""""""""""""""""""""""""""""

" Let's save undo info!
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

if !isdirectory($HOME."/.vim/backup-dir")
    call mkdir($HOME."/.vim/backup-dir", "", 0700)
endif

set undodir=~/.vim/undo-dir
set undofile

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  set backupdir=~/.vim/backup-dir
endif

" Automatically save files
set autowrite
