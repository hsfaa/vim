"开启文件类型侦测
filetype on
"根据侦测到的不同类型加载对应的插件
filetype plugin on
"自动缩进
filetype indent on
"开启语法高亮功能
syntax enable
"允许用指定语法高亮配色方案替换默认方案
syntax on"
colorscheme darkblue
set nocompatible "禁用vi兼容模式
set incsearch "开启增量搜索
set ignorecase "搜索忽略大小写
set wildmenu "vim命令自动补全
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
if has("autocmd")
	      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
      endif
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"如果是c语言的程序的话，tagbar自动开启
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>
Bundle 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
Bundle 'jiangmiao/auto-pairs'
Bundle 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
Bundle 'vim-scripts/OmniCppComplete'
set nocp    
filetype plugin on   
set completeopt=menu,menuone  
let OmniCpp_MayCompleteDot=1 
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_NamespaceSearch=1
let OmniCpp_GlobalScopeSearch=1  
let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_SelectFirstItem = 2
set tags+=/home/project/project_2/tags
set tags+=/home/project/project_1/tags
