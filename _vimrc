filetype on
filetype plugin on
filetype indent on
syntax enable
syntax on"
colorscheme darkblue
set shiftwidth=4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set nobackup " 覆盖文件时不备份
set nocompatible "禁用vi兼容模式
set incsearch "开启增量搜索
set ignorecase "搜索忽略大小写
set wildmenu "vim命令自动补全
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
set foldclose=all " 设置为自动关闭折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠
set autoread "文件自动更新
set gcr=a:block-blinkon0 "禁止光标闪烁
set laststatus=2 "总是显示状态栏
set ruler "显示光标位置
set number "显示行号
set cursorline "高亮显示当前行
set cursorcolumn "高亮显示当前列
set hlsearch "高亮显示搜索结果
set backspace=2 "回退键生效
set expandtab " 将制表符扩展为空格
set tabstop=4 " 制表符占用空格数
set shiftwidth=4 " 设置格式化时制表符占用空格数
set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符
