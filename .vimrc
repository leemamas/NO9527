set number
syntax enable
set foldmethod=indent
set foldlevel=99

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'
"树形目录
Plugin 'preservim/nerdtree'
"可视缩进线
Plugin 'Yggdroot/indentLine'
"配色主题
Plugin 'crusoexia/vim-monokai'
"快捷补全
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"状态/标签栏
Plugin 'vim-airline/vim-airline'
"HTML/css  html:5 ctrl+y,
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on

"目录树配置
map <C-n> :NERDTreeToggle<CR>  "快捷键ctrl+n
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$'] "忽略文件
let g:NERDTreeHidden=0     "不显示隐藏文件
"let g:NERDTreeWinSize = 25 "设定视窗大小

"补全版本
let g:snipMate = { 'snippet_version' : 0 }

"配色
colo monokai

"快捷执行python
map <F5> :call RunPython()<CR>
func! RunPython()
        exec "W"
        if &filetype == 'python'
                exec "!time python %"
        endif
endfunc
