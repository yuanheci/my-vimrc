" leader键映射到空格
let mapleader = "\<space>"
" 语法高亮
syntax enable
syntax on
"显示行号
set nu
"修改默认注释颜色
"hi Comment ctermfg=DarkCyan
"允许退格键删除
"set backspace=2
"启用鼠标
set mouse=c
set selection=exclusive
set selectmode=mouse,key
"按C语言格式缩进
set cindent
set autoindent
set smartindent
set shiftwidth=4

set scrolloff=5

" 允许在有未保存的修改时切换缓冲区
"set hidden

" 设置无备份文件
set writebackup
set nobackup


"显示括号匹配
"set showmatch
"括号匹配显示时间为1(单位是十分之一秒)
set matchtime=5
"显示当前的行号列号：
set ruler
"在状态栏显示正在输入的命令
set showcmd

set foldmethod=syntax
"默认情况下不折叠
set foldlevel=100
" 开启状态栏信息
"set laststatus=2
" 命令行的高度，默认为1，这里设为2
"set cmdheight=2


" 显示Tab符，使用一高亮竖线代替
"set list
"set listchars=tab:\|\ ,
"set listchars=tab:>-,trail:-

"set noanti
"开启相对行号，这样可以通过3j（向下跳3行），4k(向上跳4行）
"绝对行号需要：绝对行 + G
set relativenumber

"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on
"为特定文件类型载入相关缩进文件
filetype indent on
" 启用自动补全
filetype plugin indent on 


"设置编码自动识别, 中文引号显示
"set fileencodings=euc-cn,ucs-bom,utf-8,cp936,gb2312,gb18030,gbk,big5,euc-jp,euc-kr,latin1
set fileencodings=utf-8,gb2312,gbk,gb18030
"这个用能很给劲，不管encoding是什么编码，都能将文本显示汉字
"set termencoding=gb2312
set termencoding=utf-8
"新建文件使用的编码
set fileencoding=utf-8
"set fileencoding=gb2312
"用于显示的编码，仅仅是显示
set encoding=utf-8
"set encoding=utf-8
"set encoding=euc-cn
"set encoding=gbk
"set encoding=gb2312
"set ambiwidth=double
set fileformat=unix

"设置高亮搜索
set hlsearch
"在搜索时，输入的词句的逐字符高亮
set incsearch

" 着色模式
set t_Co=256
"colorscheme wombat256mod
"colorscheme gardener
"colorscheme elflord
colorscheme desert
"colorscheme evening
"colorscheme darkblue
"colorscheme torte
"colorscheme default

" :LoadTemplate       根据文件后缀自动加载模板
"let g:template_path='/home/ruchee/.vim/template/'

" :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
""let g:vimrc_author='sunshanlu'
""let g:vimrc_email='sunshanlu@baidu.com'
""let g:vimrc_homepage='http://www.sunshanlu.com'
"
"
" Ctrl + E            一步加载语法模板和作者、时间信息
""map <c-e> <ESC>:AuthorInfoDetect<CR><ESC>Gi
""imap <c-e> <ESC>:AuthorInfoDetect<CR><ESC>Gi
""vmap <c-e> <ESC>:AuthorInfoDetect<CR><ESC>Gi

inoremap jk <ESC>

map <c-]> g<c-]>

" ======= 引号 && 括号自动匹配 ======= "
"
":inoremap ( ()<ESC>i

":inoremap ) <c-r>=ClosePair(')')<CR>
"
":inoremap { {}<ESC>i
"
":inoremap } <c-r>=ClosePair('}')<CR>
"
":inoremap [ []<ESC>i
"
":inoremap ] <c-r>=ClosePair(']')<CR>
"
":inoremap < <><ESC>i
"
":inoremap > <c-r>=ClosePair('>')<CR>
"
"":inoremap " ""<ESC>i
"
":inoremap ' ''<ESC>i
"
":inoremap ` ``<ESC>i
"
":inoremap * **<ESC>i

" 每行超过80个的字符用下划线标示
""au BufRead,BufNewFile *.s,*.asm,*.h,*.c,*.cpp,*.java,*.cs,*.lisp,*.el,*.erl,*.tex,*.sh,*.lua,*.pl,*.php,*.tpl,*.py,*.rb,*.erb,*.vim,*.js,*.jade,*.coffee,*.css,*.xml,*.html,*.shtml,*.xhtml Underlined /.\%81v/
"
"
" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" 增加鼠标行高亮
"set cursorline
"hi CursorLine  cterm=NONE   ctermbg=darkred ctermfg=white

highlight iCursor guifg=white guibg=steelblue
" 设置tab是四个空格
set ts=4
set expandtab

" 主要给Tlist使用
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 2


let g:netrw_winsize=25
map <C-n> :NERDTreeMirror<CR>
map <C-n> :NERDTreeToggle<cR>
let g:NERDTreeQuitOnOpen = 0
" 在打开新文件时，自动在当前窗口中创建一个 NERDTree 镜像窗口。
autocmd BufWinEnter * if &buftype != 'nofile' | NERDTreeMirror | endif

" 自定义tab: 显示编号且tab中始终显示文件名，不显示目录名
" 便于结合leader键快速跳转
function! MyTabLine()
  let tabline = ''
  for i in range(tabpagenr('$'))
    let tabnum = i + 1
    let buflist = tabpagebuflist(tabnum)
    let winnr = tabpagewinnr(tabnum)
    let bufname = bufname(buflist[winnr - 1])

    " 忽略 NERDTree 窗口，选择文件窗口的 Buffer
    for buf in buflist
      if getbufvar(buf, '&filetype') != 'nerdtree'
        let bufname = bufname(buf)
        break
      endif
    endfor

    let filename = fnamemodify(bufname, ':t')
    let tabline .= '%' . tabnum . 'T'
    let tabline .= (tabnum == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let tabline .= ' ' . tabnum . ': ' . filename . ' '  " 添加 Tab 页编号
  endfor
  return tabline
endfunction
set tabline=%!MyTabLine()

" leader键实现快速关闭tab,
" 左侧的目录和右侧的文件属于同一tab，可通过:tabs查看所有tab
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>


" tab快速跳转
nnoremap <leader>1 :1tabnext<CR>
nnoremap <leader>2 :2tabnext<CR>
nnoremap <leader>3 :3tabnext<CR>
nnoremap <leader>4 :4tabnext<CR>
nnoremap <leader>5 :5tabnext<CR>
nnoremap <leader>6 :6tabnext<CR>
nnoremap <leader>7 :7tabnext<CR>
nnoremap <leader>8 :8tabnext<CR>
nnoremap <leader>9 :9tabnext<CR>
nnoremap <leader>10 :10tabnext<CR>
nnoremap <leader>11 :11tabnext<CR>
nnoremap <leader>12 :12tabnext<CR>
nnoremap <leader>13 :13tabnext<CR>
nnoremap <leader>14 :14tabnext<CR>
nnoremap <leader>15 :15tabnext<CR>
nnoremap <leader>16 :16tabnext<CR>


" vim自带的<C-n>自动补全（只能补全出现过的单词）
" 强制覆盖映射，确保在插入模式下生效
" 改成插入模式下<C-j>下移，<C-k>上移
inoremap <silent> <C-j> <C-n> 
inoremap <silent> <C-k> <C-p>


"ctags"

set tags=tags;
set autochdir

"========================="
set tags+=~/.vim/systags
"========================="

if has("cscope")
    set csto=0
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        "cs add cscope.out
        cs add $PWD/cscope.out $PWD
    else "子目录打开，向上查找
        let cscope_file=findfile("cscope.out", ".;")
        let cscope_pre=matchstr(cscope_file, ".*/")
        if !empty(cscope_file) && filereadable(cscope_file)
			exe "cs add" cscope_file cscope_pre 
        endif
    endif
    set csverb
    "set cst  这两句会将cscope当作tag，当找不到时会卡住，因此注释掉
    "set cscopetag
endif

nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

