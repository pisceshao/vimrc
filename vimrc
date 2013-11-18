:imap jj <Esc>
execute pathogen#infect()
set go=
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"winpos 5 5          	    " 设定窗口位置  
"set lines=40 columns=155   " 设定窗口大小  
syntax on                   " 自动语法高亮
colorscheme SolarizedDark   " 设定配色方案
"set background=dark	    " 设置背景颜色
colorscheme molokai	    " 设定配色方案
set nocompatible            " 关闭 vi 兼容模式
set cindent                 " C/C++风格缩进
set smarttab
set clipboard+=unnamed      " 代码补全 
set autowrite		    " 自动保存
set nobackup                " 关闭备份
set noswapfile      	    " 不使用swp文件，注意，错误退出后无法恢复
set number                  " 显示行号
set showcmd                 " 显示命令
set cursorline              " 突出显示当前行
set ruler                   " 打开状态栏标尺
set shiftwidth=8            " 设定 > 命令移动时的宽度为 8
set softtabstop=8           " 使得按退格键时可以一次删掉 8 个空格
set tabstop=8               " 设定 tab 长度为 8
set noexpandtab		    " 不要用空格代替制表符
set autochdir               " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on   " 开启插件
set completeopt=longest,menu "文件检测
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
autocmd FileType java set tags+=D:\tools\java\tags  
"autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags  
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
"设置tags  
set tags=tags  
"set autochdir 



