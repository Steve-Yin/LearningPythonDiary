set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" original repos on github
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'kshenoy/vim-signature'
"Bundle 'sukima/xmledit'
"Bundle 'sjl/gundo.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 'SirVer/ultisnips'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
"Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
"..................................
" vim-scripts repos
"Bundle 'YankRing.vim'
"Bundle 'vcscommand.vim'
"Bundle 'ShowPairs'
"Bundle 'SudoEdit.vim'
"Bundle 'EasyGrep'
"Bundle 'VOoM'
"Bundle 'VimIM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction





"配色方案
set background=dark
"colorscheme desert
"colorscheme solarized
"colorscheme molokai
"colorscheme phd


"let mapleader="\"
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>WQ :wa<CR>:q<CR>

" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC 


"common conf {{
syn on
set ai
set bs=2
set showmatch
set laststatus=2
set expandtab
set shiftwidth=4
set tabstop=4
set cursorline
set cursorcolumn
set number
set autoread
set hidden
set hlsearch
" 显示光标当前位置
set ruler
set ignorecase
set hls
set helplang=cn
" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid:h12

set fileencodings=uft-8,gbk
"set fileencoding=utf-8
"set encoding=utf-8
"set encoding=gbk

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

set nowrap

"set backup files
"set backup
"set backupext=.bak
"set backupdir=~/Documents/backup
"keep orig files "set patchmode=.orig

"}}


"conf for tabs, 
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>


" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T


"conf for plugins {{

"pathogen{
execute pathogen#infect()
"}

"nerdtree{
map <F3> :NERDTreeToggle<CR>
"}


"vim-indent-guides-master{
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle"}
"}}

"nerdcommenter-master{
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"}

"CtrlP {
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"}

"CtrlP-funky {
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
"}

"}}

