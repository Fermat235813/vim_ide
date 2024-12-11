" ------------------------------------------------------------
" Load plugins
" ------------------------------------------------------------

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins will be downloaded under the specified directory.
call vundle#begin('~/.vim/plugged')

" General Vundle Plugin for basic functions
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'


" List ends here. Plugins become visible to Vim after this call.
call vundle#end()
filetype plugin indent on


" ------------------------------------------------------------
" Vim settings
" ------------------------------------------------------------

" Enable line numbers
set nu

" Enable syntax highlighting
syntax on

" everything to be utf-8
set encoding=utf-8

" c: Automatically break comments using the textwidth value.
" r: Automatically insert the comment leader when hitting <Enter> in insert mode.
" o: Automatically insert the comment leader when hitting 'o' or 'O' in normal mode.
" n: Recognize numbered lists. When hitting <Enter> in insert mode.
" m: Automatically break the current line before inserting a new comment line.
set formatoptions+=cronm

" This sets the width of a tab character to 4 spaces.
set tabstop=4

" This sets the number of spaces used when the <Tab> key is pressed in insert
" mode to 4.
set softtabstop=4

" This sets the number of spaces used for each indentation level when using
" the '>' and '<' commands, as well as the autoindent feature.
set shiftwidth=4

" This setting enables automatic indentation, which will copy the indentation
" of the current line when starting a new line.
set autoindent

" This disables the automatic conversion of tabs to spaces when you press the
" <Tab> key.
set noexpandtab

" Always split below
set splitbelow

" This enables the use of the mouse in all modes (normal, visual, insert,
" command-line, etc.).
set mouse=a

" This displays line numbers in the left margin.
set number

" This disables the creation of backup files.
set nobackup

" This disables the creation of swap files.
set noswapfile

" Automatically reload files when they change
set autoread

" Enable spell checking
" set spell
" set spelllang=en

" Highlight the current line
set cursorline

" Set text width to 100
set textwidth=100

" This maps the '<' and '>' keys in visual mode to shift the selected text one
" shift width to the left or right and reselect the shifted text.
vnoremap < <gv
vnoremap > >gv

" The next four lines define key mappings for switching between windows using
" Ctrl + hjkl keys
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" The next four lines define key mappings for resizing windows using Alt +
" hjkl keys:
map <a-l> :vertical res -5<CR>
map <a-h> :vertical res +5<CR>
map <a-j> :res -5<CR>
map <a-k> :res +5<CR>

" These lines define key mappings for moving the cursor 10 spaces at a time
" using Shift + arrow keys:
nmap <S-l> 10l<CR>
nmap <S-h> 10h<CR>
nmap <S-j> 10j<CR>
nmap <S-k> 10k<CR>

" Enable folding
set foldenable

" Configure fold method
set foldmethod=marker

" Set the fold level to start with all folds open
set foldlevelstart=99

" Set the fold nesting level (default is 20)
set foldnestmax=10

" Automatically close folds when the cursor leaves them
set foldclose=all

" Open folds upon all motion events
set foldopen=all

" ------------------------------------------------------------
"  PluginConfig
" ------------------------------------------------------------
"
" Plugin: preservim/nerdtree
autocmd FileType nerdtree setlocal nolist
let g:NERDTreeWinSize = 40
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.o$', '\.obj$', '\.a$', '\.so$', '\.out$', '\.git$']
let NERDTreeShowHidden = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
\ 'Modified'  :'✹',
\ 'Staged'    :'✚',
\ 'Untracked' :'✭',
\ 'Renamed'   :'➜',
\ 'Unmerged'  :'═',
\ 'Deleted'   :'✖',
\ 'Dirty'     :'✗',
\ 'Ignored'   :'☒',
\ 'Clean'     :'✔︎',
\ 'Unknown'   :'?',
\ }
" }}}"
