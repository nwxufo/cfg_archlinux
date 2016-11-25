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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

