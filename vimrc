set nocompatible
filetype off

 
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" vim settings 
set nu			        " Enable line numbers
syntax on		        " Enable syntax highlighting
set tabstop=4		    " Number of colums with tab
set shiftwidth=4	    " Number of colums with shift
set expandtab		    " Use sapces when tabbing
set incsearch		    " Enable incremental search
set hlsearch		    " Enable highlight search
set termwinsize=12x0    " Set terminal size
set splitbelow          " Always split below
set mouse=a             " Enable mouse drag on window splits


" Use spaces when tabbing
set expandtab



" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

 
Plugin 'VundleVim/Vundle.vim' " Add vundle plugin 

call vundle#end()


filetype plugin indent on
