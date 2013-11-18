set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"winpos 5 5          	    " 设定窗口位置  
"set lines=40 columns=155   " 设定窗口大小  
set nocompatible            " 关闭 vi 兼容模式
set smartindent                 " C/C++风格缩进
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
set expandtab		    " 不要用空格代替制表符
set autochdir               " 自动切换当前目录为当前文件所在的目录
set completeopt=longest,menu "文件检测
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
"set hlsearch                " 搜索时高亮显示被找到的文本
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)

"##############键位设置###############" 
imap jj <Esc>

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set nocompatible
filetype off
if has("unix")
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
else 
	set rtp+=~/vimfiles/bundle/vundle/
	call vundle#rc('$HOME/vimfiles/bundle/')
endif
"################### 插件管理 ###################"

"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'
"vim plugin bundle control, command model
" :BundleInstall install
" :BundleInstall! update
" :BundleClean remove plugin not in list

"################### 导航 ###################"
"目录导航
Bundle 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$','\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | end

"标签导航 要装ctags
Bundle 'vim-scripts/taglist.vim'
set tags=tags;
let Tlist_Ctags_Cmd="/usr/bin/ctags"
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 25

"################### 显示增强 ###################"
"
""状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"if want to use fancy,need to add font patch -> git clone
"git://gist.github.com/1630581.git ~/.fonts/ttf-dejavu-powerline
""let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'

"主题 solarized
Bundle 'altercation/vim-colors-solarized'
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

"主题 molokai
Bundle 'tomasr/molokai'
"let g:molokai_original = 1

filetype plugin indent on   " 开启插件
syntax enable
syntax on                   " 自动语法高亮
set background=dark	    " 设置背景颜色
set t_Co=256
"colorscheme SolarizedDark   " 设定配色方案
colorscheme molokai	    " 设定配色方案


