"定义快捷键的前缀，即<Leader>
let mapleader=";"

"开启文件类型侦测
filetype on
"根据侦测到的不同类型加载对应的插件
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"开启行号显示
set number
"高亮显示当前行/列
set cursorline
"set cursorcolumn
"高亮显示搜索结果
set hlsearch

"语法关联
syntax on
set nocompatible

"运行时路径
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"安装的插件
Plugin 'gmarik/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'

"插件必须在该语句前
call vundle#end()

" F3自动格式化代码
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
au BufWrite * :Autoformat
au BufWrite *.cpp :Autoformat
au BufWrite *.h :Autoformat
au BufWrite *.py :Autoformat

