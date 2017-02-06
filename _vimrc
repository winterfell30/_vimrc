filetype on
set shortmess=atI "去掉欢迎界面（帮助乌干达儿童。。。）
colorscheme  molokai     "配色方案 
set guifont=Liberation\Mono\ 11     "字体与字号
set tabstop=4                " 设置tab键的宽度
set shiftwidth=4             " 换行时行间交错使用4个空格
"set autoindent               " 自动对齐
set softtabstop=4
set backspace=indent,eol,start              " 设置退格键可用
"set cindent shiftwidth=4     " 自动缩进4空格
"set smartindent              " 智能自动缩进
"set ai!                      " 设置自动缩进
set showmatch 
set number                   " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set hidden                   " 允许在有未保存的修改时切换缓冲区
"set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
set nobackup
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

set ts=4 
set expandtab

" 映射全选+复制 ctrl+a  
map <C-A> ggVG  
map! <C-A> <Esc>ggVGY  
map <F12> gg=G  
" 选中状态下 Ctrl+c 复制  
vmap <C-c> "+y  
map <C-v> "+p  

map <F5> :call CR()<CR>
func! CR()
exec "w"  
exec "!g++ -Wall % -o %<"  
exec "! ./%<"  
endfunc

"C,C++的调试  
map <F8> :call Rungdb()<CR>  
func! Rungdb()  
    exec "w"  
    exec "!g++ % -g -o %<"  
    exec "!gdb ./%<"  
endfunc  

map <F2> :call SetTitle()<CR>
func! SetTitle()
let l = 0
let l = l + 1 | call setline(l,'#include <stdio.h>')
let l = l + 1 | call setline(l,'#include <string.h>')
let l = l + 1 | call setline(l,'#include <iostream>')
let l = l + 1 | call setline(l,'#include <algorithm>')
let l = l + 1 | call setline(l,'#include <vector>')
let l = l + 1 | call setline(l,'#include <queue>')
let l = l + 1 | call setline(l,'#include <stack>')
let l = l + 1 | call setline(l,'#include <set>')
let l = l + 1 | call setline(l,'#include <map>')
let l = l + 1 | call setline(l,'#include <string>')
let l = l + 1 | call setline(l,'#include <math.h>')
let l = l + 1 | call setline(l,'#include <stdlib.h>')
let l = l + 1 | call setline(l,'#include <time.h>')
let l = l + 1 | call setline(l,'using namespace std;')
let l = l + 1 | call setline(l,'#define LL long long')
let l = l + 1 | call setline(l,'#define Lowbit(x) ((x)&(-x))')
let l = l + 1 | call setline(l,'#define lson l, mid, rt << 1')
let l = l + 1 | call setline(l,'#define rson mid + 1, r, rt << 1|1')
let l = l + 1 | call setline(l,'#define MP(a, b) make_pair(a, b)')
let l = l + 1 | call setline(l,'const int INF = 0x3f3f3f3f;')
let l = l + 1 | call setline(l,'const int MOD = 1000000007;')
let l = l + 1 | call setline(l,'const int maxn = 1e5 + 10;')
let l = l + 1 | call setline(l,'const double eps = 1e-8;')
let l = l + 1 | call setline(l,'const double PI = acos(-1.0);')
let l = l + 1 | call setline(l,'typedef pair<int, int> pii;')
let l = l + 1 | call setline(l,'')
let l = l + 1 | call setline(l,'int main()')
let l = l + 1 | call setline(l,'{')
let l = l + 1 | call setline(l,'    //freopen("in.txt","r",stdin);')
let l = l + 1 | call setline(l,'    //freopen("out.txt","w",stdout);')
let l = l + 1 | call setline(l,'    ')
let l = l + 1 | call setline(l,'    return 0;')
let l = l + 1 | call setline(l,'}')
endfunc
"ubuntu 16.04
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏