syntax on
set background=dark
colorscheme cobalt2

set expandtab " Expand tabs to spaces.
autocmd FileType make set noexpandtab " Don't expand tabs for Makefile

set ruler           " Show rows and columns bottom-right corner.
set nowrap          " Disable wrapping long lines.
set tabstop=4       " Tab indent size.
set shiftwidth=4    " Shift width when using Ctrl+< or Ctrl+>.

set number nu       " Enable line numbers.
set ttimeoutlen=0

set showcmd         " Show command in bottom bar.
set showmatch       " Highlight pairing parentheses.
set incsearch       " Search as characters are entered.
set hlsearch        " Highlight matches.

"
set wildmenu

" Remove all trailing whitespace by pressing F5.
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Auto strip trailing spaces on save.
autocmd BufWritePre * :%s/\s\+$//e

" Add highlighting for Scons.
au BufRead,BufNewFile SContruct set filetype=python

" Command alias for NERDTree.
command TREE NERDTree

" Add fzf support.
set rtp+=~/.fzf
