set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins go here
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'flazz/vim-colorschemes'
Plugin 'jamessan/vim-gnupg'
Plugin 'ajh17/spacegray.vim'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()



" Powerline activation
python << EOF
from powerline.vim import setup as powerline_setup
powerline_setup()
del powerline_setup
EOF

set laststatus=2


" python with virtualenv support
python << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


set encoding=utf-8
set splitbelow
set splitright

let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all=1

" Map window movement to control 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" File specific settings
au BufNewFile,BufRead *.py 
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set colorcolumn=80

au BufNewFile,BufRead *.rst
    \ set textwidth=79

" Syntax highlighting
syntax on

" Color
colorscheme spacegray
