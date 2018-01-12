"colorscheme torte
"colorscheme murphy
"colorscheme desert 
"colorscheme desert 
"colorscheme elflord
"colorscheme ron
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

set nocompatible     " 不使用vi默认键盘布局  
set number            "   显示行号
set autoindent         " 自动对齐
set smartindent        " 智能对齐
set showmatch         " 括号匹配模式
set ruler              "显示状态行
set incsearch           " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到   第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词时，别忘记回车.
set tabstop=8         "tab键为4个空格
"set softtabstop=8　 "设置（软）制表符宽度为4
set shiftwidth=8    "换行时行间交错使用4个空格
set noexpandtab
set autoindent
set cindent           "  C语言格式对齐
set nobackup          " 不要备份文件
set clipboard+=unnamed " 与windows共享剪贴板

"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	    "如果文件类型为.sh文件 
	if &filetype == 'sh' 
	     call setline(1,"\#######################################") 
	     call append(line("."), "\# File Name: ".expand("%")) 
	     call append(line(".")+1, "\# Author: milo") 
	     call append(line(".")+2, "\# Mail: printer_bzu@163.com") 
	     call append(line(".")+3, "\# Created Time: " .strftime("%s")) 
	     call append(line(".")+4, "\######################################") 
	     call append(line(".")+5, "\#!/bin/bash") 
	     call append(line(".")+6, "") 
	else 
	     call setline(1, "/*") 
	     call append(line("."), " *  ".expand("%")) 
	     call append(line(".")+1, " *  Author: milo") 
	     call append(line(".")+2, " *  Mail: printer_bzu@163.com ") 
		 call append(line(".")+3, " *  Created Time: ".strftime("%Y-%m-%d %H:%M")) 
		 "call append(line(".")+4, " *  This program is free software; you can redistribute it and/or modify it under the smems of the GUN General Public License as published by the Free Software Foundation; version 2 of the lLiscense.
		 call append(line(".")+4, " */") 
		 call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
	     call append(line(".")+6, "#include <iostream>")
	     call append(line(".")+7, "using namespace std;")
	     call append(line(".")+8, "")
	endif
	if &filetype == 'c'
	     call append(line(".")+6, "#include <.h>")
	     call append(line(".")+7, "")
	endif
	autocmd BufNewFile * normal G
endfunc 
"added by nwx 2017 07 21 星期五
"＝REF: 一步步将vim改造成C_C++开发环境
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
"debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
syntax on " 语法高亮
endif
colorscheme ron " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下

" detect file type
filetype on
filetype plugin on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"have Vim load indentation rules and plugins according to the detected filetype
filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

"set ignorecase " 搜索模式里忽略大小写
"set smartcase " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set autowrite " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
"set smartindent " 智能对齐方式
set tabstop=4 " 设置制表符(tab键)的宽度
set softtabstop=4 " 设置软制表符的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格
set cindent " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
		"set backspace=2 " 设置退格键可用
set showmatch " 设置匹配模式，显示匹配的括号 
set linebreak " 整词换行 
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去 
set hidden " Hide buffers when they are abandoned 
set mouse=a " Enable mouse usage (all modes) "使用鼠标 
set number " Enable line number "显示行号 "
set previewwindow " 标识预览窗口 
set history=50 " command history to 50 "历史记录50条 "--状态行设置-- 
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行 
set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。 "--命令行设置-- 
set showcmd " 命令行显示输入的命令 
set showmode " 命令行显示vim当前模式 "
"--find setting-- set incsearch " 输入字符串就显示匹配点 
set hlsearch 

 "--ctags setting--
 " 按下F5重新生成tag文件，并更新taglist
 map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
 imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
 set tags=tags
 set tags+=./tags "add current directory's generated tags file
" set tags+=~/arm/linux-2.6.24.7/tags "add new tags file(刚刚生成tags的路径，在ctags -R 生成tags文件后，不要将tags移动到别的目录，否则ctrl+］时，会提示找不到源码文件)
 set tags+=./tags表示在当前工作目录下搜索tags文件
" set tags+=~/arm/linux-2.6.24.7/tags表示在搜寻tags文件的时候，也要搜寻~/arm/linux-2.6.24.7/文件夹下的tags文件。
