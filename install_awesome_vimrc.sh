#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

echo "Starting Jason Ball Customization!"

echo "
set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme'
Plug 'jez/vim-superman'

call plug#end()

set noshowmode
set mouse=a
let g:NERDTreeWinPos = 'left'
set number
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
set guifont=MesloLGSNerdFontComplete-Regular:h14

inoremap jj <esc>
inoremap jk <esc>" >> ~/.vimrc

echo "End Jason Ball Customization!"