syntax on

set number
set relativenumber

set wrap


noremap j h
noremap i k
noremap h i
noremap k j

map S :w<CR>
map Q :q<CR>
map s <nop>

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()
