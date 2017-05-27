"""""""""""""""
" vim setting "
"""""""""""""""
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" 使用Vundle来管理Vundle，这个必须要有。
" Search plugins from http://vim-scripts.org/vim/scripts.html
Bundle 'gmarik/vundle'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'vim-scripts/The-NERD-tree'
"Plugin 'vim-scripts/Vim-JDE'
Plugin 'vim-scripts/code_complete-new-update'
Plugin 'vim-scripts/lookupfile'
Plugin 'vim-scripts/taglist.vim'
Plugin 'ap/vim-templates'
Plugin 'vim-scripts/genutils'
Plugin 'vim-scripts/minibufexplorerpp'
Plugin 'vim-scripts/xptemplate'
Plugin 'a.vim'
Plugin 'vim-scripts/The-NERD-Commenter'
Plugin 'vim-utils/vim-man'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
"Plugin 'justmao945/vim-clang'
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'craigemery/vim-autotag'
"Plugin 'hari-rangarajan/CCTree'
"Plugin 'vim-scripts/Pydiction'
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
call vundle#end()
filetype plugin indent on

"execute pathogen#infect()

"#Set mapleader
"let mapleader=","
"let g:mapleader=","
"let maplocalleader="\\"

" work with cygwin
"set shell=bash
"set shellcmdflag=-c

"#set indent line, i do not know why it is useful
"set list 
"" 自动source配置文件
autocmd! BufWritePost $MYVIMRC source %

"set autochdir
set backspace=indent,eol,start
set backup
"set backupdir=E:/FilesSafety/Vim/Backup
set undofile
"set undodir=E:/FilesSafety/Vim/Undo
set ul=500
au Filetype c,cpp,java set cindent autoindent smartindent
au Filetype asm,autohotkey set autoindent
"set smarttab
"colorscheme darkblue 
syntax on
set autowrite
behave mswin
set ruler
set cmdheight=1
"set rnu
set nu
set incsearch 
set magic
set showmatch
set hlsearch
set history=1000
set guioptions-=T
set whichwrap+=b,s,l,h,[,]
au Filetype xml,htm,html set matchpairs+=<:>

"set ignorecase " 搜索时忽略大小写
"set smartcase "但在有一个或以上大写字母时,仍保持对大小写敏感

"set showcmd                 " 在状态栏显示目前所执行的指令，未完成的指令片段亦
" 会显示出来

" 带有如下符号的单词不要被换行分割
"set iskeyword+=_,$,@,%,#,-

set noignorecase
filetype on
filetype indent on
set nocompatible

"set guifont=Consolas:h13
"au Filetype txt set guifont=Consolas:h15
"set guifont=Bitstream_Vera_Sans_Mono:h10.5:cANSI
"set gfw=幼圆:h10.5:cGB2312

"set large scrolloff so that the curser will be in the middle when scrolling
"the screen
set scrolloff=100
au Filetype txt set scrolloff=0

set keywordprg=man\ -a

"#tab pages
nmap <leader>tn :tabnew<CR>
nmap <leader>tc :tabclose<CR>

nmap <C-left> <C-w>h
nmap <C-right> <C-w>l
nmap <C-down> <C-w>j
nmap <C-up> <C-w>k

"nmap <Up> k
"nmap <Down> j
"noremap k gk
"noremap gk k
"noremap j gj
"noremap gj j

"noremap w W
"noremap W w
"noremap b B
"noremap B b
"noremap e E
"noremap E e

nmap <pagedown> :tabn<CR>
nmap <pageup> :tabp<CR>

"set equalalways
"set wrap
"au GUIEnter * simalt ~x	" start with full screen

"winpos 400 0
"set lines=43
"set columns=90

"# work with win7 cmd
"if(g:vimrc_iswindows==1)
"    set shell=cmd.exe
"    set shellcmdflag=/C
"endif

"#Set to auto read when a file is changed from the outside
if exists("&autoread")
    set autoread
endif

"#Have the mouse enabled all the time:
"if exists("&mouse")
"    set mouse=a
"endif

set shiftwidth=2 tabstop=2 expandtab
"au Filetype asm setlocal shiftwidth=8 tabstop=8 noexpandtab
"au Filetype autohotkey setlocal shiftwidth=3 tabstop=3 noexpandtab

" no indent when editing html files
"au Filetype xhtml,html setlocal indentkeys=
au Filetype xhtml,html,css setlocal shiftwidth=2 tabstop=2 expandtab

au Filetype cpp set tags+=$HOME/.vim/tags/sgi_stl_tags
au Filetype c,java,cpp set tags-=TAGS
au Filetype c,java,cpp set tags-=./TAGS
au Filetype c,cpp,java set tags+=./tags

"au Filetype cpp set tags+=$VIM/tags/cpp/sgi_stl_tags


"au Filetype c,cpp set tags+=E:/MinGW/include/tags tags+=E:/MinGW/lib/gcc/mingw32/4.6.2/include/tags
"au Filetype c,cpp exec "cs add E:/MinGW/include/cscope.out" 
"au Filetype c,cpp exec "cs add E:/MinGW/lib/gcc/mingw32/4.6.2/include/cscope.out"

"au Filetype java set tags+=$VIM\tags\java\tags
"au Filetype java set tags+=D:\Documents\CodeSource\Java\tags

"# set path for the gf command to look for the head file * 
"# and the " " character in the path should be replaced by "\\\ "
"set path+=E:\Program\\\ Files\\gcc\include\c++\4.4.0,E:\Program\\\ Files\\gcc\i386-pc-mingw32\include
"au Filetype c,cpp set path+=$VIM\tags\cpp\stl

"au Filetype java cs a D:/Documents/CodeSource/Java/cscope.out

"" Remove leading '=' mark 
"" so that gf command works well with expr "a=path/to/command"
au Filetype sh setl includeexpr=substitute(v:fname,'^.*=','','g')


"###########################################################################

""""""""""""""""""""""""""""""
"# plugin path
"""""""""""""""""""""""""""""

"au Filetype java set cfu=VjdeCompletionFun
"au Filetype html,xhtml,css setlocal runtimepath+=$VIM/plugin/zencoding
"au Filetype txt setlocal runtimepath+=$VIM/plugin/tb
"au Filetype c,cpp,java setlocal runtimepath+=$VIM/myplugin/project/plugin
"set runtimepath+=$VIM/plugin/nt

"##########################################################################"
"""""""""""""""""""""""""""""
"# Xp Template              "
"""""""""""""""""""""""""""""
let g:xptemplate_key = '<C-j>'

"##########################################################################"
"""""""""""""""""""""""""""""
"# Code Complete            "
"""""""""""""""""""""""""""""
let g:CodeCompl_Hotkey = '<C-k>'

"##########################################################################"
"""""""""""""""""""""""""""""""
"# reload the working project "
""""""""""""""""""""""""""""""
function! LoadSession()
    if filereadable("session.vim")
        exec "source session.vim"
    endif 
    if filereadable("session.viminfo")
        exec "rviminfo session.viminfo"
    endif
    """ user's setting
    if filereadable("user.vim")
        exec "source user.vim"
    endif 
endfunction
map <leader>sl :call LoadSession()<CR><CR>

"#save the working project for later editing
function! SaveSession()
    exec "wall"
    exec "mksession! session.vim"
    exec "wviminfo! session.viminfo"
endfunction
map <leader>ss :call SaveSession()<CR><CR>

"##########################################################################"
"""""""""""""""""""
"# compile setting "
"""""""""""""""""""

"let g:opencv=" -L e:/Program/OpenCv2.2/lib/ -I e:/Program/OpenCv2.2/include/ -l opencv_core220d -l opencv_highgui220d"


"# compile java 
func! CompileJava() 
    exec "wa"
    set makeprg=javac\ -d\ .\ %
    exec "make"
    exec "cw"
endfunc

"# interpret java
func! InterpretJava()
    exec "!java -ea %<"
endfunc

"# compile 16-bit asm
func! CompileAsm()
    exec "wa"
    exec "!masm %;"
    silent exec "!link %<;"
endfunc

func! DebugAsm()
    silent exec "!debug %<.exe"
endfunc

"# compile opencv, not work 
"func! CompileOpenCv() 
"    exec "wa"
"    set makeprg=gcc\ -g\ -Wall\ -o%<\ %\ -L\ e:/Program/OpenCv2.2/lib/\ -I\ e:/Program/OpenCv2.2/include/\ -I\ e:/Program/OpenCv2.2/include/opencv2/\ -l\ opencv_core220d\ -l\ opencv_highgui220d
"    silent exec "make"
"    exe "cw"
"endfunc 

"# compile C 
func! CompileGcc() 
    exec "wa"
    set makeprg=gcc\ -g\ -Wall\ -o%<\ %\ 
    exec "make"
    exe "cw"
endfunc 

"# compile C++
func! CompileGpp() 
    exec "wa"
    set makeprg=g++\ -g\ -Wall\ -o%<\ %\ 
    silent exec "make"
    exec "cw"
endfunc 

"# assemble c++
func! AssembleGpp() 
    exec "wa"
    set makeprg=g++\ -g\ -Wall\ -S\ -o%<.s\ %\ 
    exec "make"
    exec "cw"
endfunc 

"# assemble c
func! AssembleGcc() 
    exec "wa"
    set makeprg=gcc\ -g\ -Wall\ -S\ -o%<.s\ %\ 
    exec "make"
    exec "cw"
endfunc 

func! GetExeFilePwd()
    "let exes = glob("*.exe")
    let s:allfile = glob("*")
    let s:file_list = split(s:allfile, '\n' )
    let s:exes_list = []
    let s:prompt_list = []
    let s:prompt_idx = 0
    for s:item in s:file_list
        if executable('./'.s:item)
            echo s:item
            let s:prompt_idx = s:prompt_idx + 1
            let s:exes_list = s:exes_list + [s:item]
            let s:prompt_list = s:prompt_list + [s:prompt_idx.". ".s:item]
        endif
    endfor
    let s:exe_idx = s:prompt_idx - 1
    if s:prompt_idx > 1
        let s:exe_idx = inputlist(["select file to execute"] + s:prompt_list) - 1
    endif
    if s:exe_idx == -1
        echo 'No executable file found'
        return
    endif
    let s:result = get(s:exes_list, s:exe_idx)
    return s:result
endfun

"# run exe file
"# when working with cygwin, exec like "./filename"
func! Run()
    let exes = GetExeFilePwd()
    if exes != ""
        "execute "!".exes
        execute "!./".exes
    endif
endfunc 

"#make
nmap <leader>m :call Make()<CR><CR>
func! Make()
    exec "wa"
    if filereadable("Makefile") || filereadable("makefile") || filereadable("MAKEFILE")
        set makeprg=make
    elseif expand("%:e") == "c"
        set makeprg=gcc\ -g\ -Wall\ -o%<\ %\ 
    elseif expand("%:e") == "cpp"
        set makeprg=g++\ -g\ -Wall\ -o%<\ %\ 
    endif
    exec "make"
    exe "cw"
endfunc

func! Gdb()
    let exes = GetExeFilePwd()
    if exes != ""
        exec "!gdb %<"
    endif
endfunc

func! Jdb()
    exec "!jdb %<"
endfunc

"# auto compile and run
"au FileType java nmap<buffer><leader>c :call CompileJava()<CR><CR>
"au FileType c nmap<buffer><leader>c :call CompileGcc()<CR><CR>
"au FileType cpp nmap<buffer><leader>c :call CompileGpp()<CR><CR>
"au FileType asm nmap<buffer><leader>c :call CompileAsm()<CR><CR>

au FileType c nmap<buffer><leader>a :call AssembleGcc()<CR><CR>:e %<.s<CR>
au FileType cpp nmap<buffer><leader>a :call AssembleGpp()<CR><CR>

"au FileType java nmap<buffer><leader>r :call InterpretJava()<CR><CR>
au FileType c,cpp,asm nmap<buffer><leader>r :call Run()<CR>
"au FileType ruby nmap<buffer><leader>r :!ruby %<CR><CR>
"au FileType html,xhtml nmap<buffer><leader>r :!"E:\Program Files\Mozilla Firefox\firefox.exe" %<CR><CR>

au FileType c,cpp nmap<buffer><leader>d :call Gdb()<CR><CR>
"au FileType java nmap<buffer><leader>d :call Jdb()<CR><CR>
"au FileType asm nmap<buffer><leader>d :call DebugAsm()<CR><CR>

nmap <buffer><leader>n :cn<CR>
nmap <buffer><leader>p :cp<CR>


"##########################################################################"
"""""""""""""""""""""""""""
"# template plugin setting "
"""""""""""""""""""""""""""

let g:template_load = 1
let g:template_tags_replacing = 1
"let g:T_AUTHOR = "Jestery"
"let g:T_AUTHOR_EMAIL = "jestery@gmail.com"
"let g:T_AUTHOR_WEBSITE = "http://www.pte.cn"
let g:T_DATE_FORMAT = "%c"
" note: the symbol '.' connect a variable and a string
"let g:template_path = $VIM."/vimfiles/template"
let g:template_path = $HOME."/.vim/template"

"##########################################################################"
""""""""""""""""""""""
" foldenable setting "
""""""""""""""""""""""
set foldlevel=100	 " not foldenable the moment vim start
set foldenable
set foldmethod=manual
au Filetype c,cpp,java set foldmethod=syntax
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1

"autocmd BufWinLeave ?* silent mkview
"autocmd BufWinEnter ?* silent loadview 

"##########################################################################"

"""""""""""""""""""""""""""""""""""""""""
" internationalization                  "
" It only work in Win2k Chinese version "
"""""""""""""""""""""""""""""""""""""""""
"if has("multi_byte") && (has("win32") || has("win95") || has("win64") || has("win16"))
"    "set bomb
"    set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
"    " CJK environment detection and corresponding setting
"    if v:lang =~ "^zh_CN"
"        " Use cp936 to support GBK, euc-cn == gb2312
"        set encoding=cp936
"        set termencoding=cp936
"        set fileencoding=cp936
"    elseif v:lang =~ "^zh_TW"
"        " cp950, big5 or euc-tw
"        " Are they equal to each other?
"        set encoding=big5
"        set termencoding=big5
"        set fileencoding=big5
"    elseif v:lang =~ "^ko"
"        " Copied from someone's dotfile, untested
"        set encoding=euc-kr
"        set termencoding=euc-kr
"        set fileencoding=euc-kr
"    elseif v:lang =~ "^ja_JP"
"        " Copied from someone's dotfile, untested
"        set encoding=euc-jp
"        set termencoding=euc-jp
"        set fileencoding=euc-jp
"    elseif v:lang =~ "utf8$" || v:lang =~ "UTF-8$" || v:lang =~ "C"
"        " Detect UTF-8 locale, and replace CJK setting if needed
"        set encoding=utf-8
"        set termencoding=utf-8
"        set fileencoding=utf-8
"    endif
"endif

"################################################################################"

"""""""""""""""""""""""""""""""""""""""
" vimer's setting                     "
" tags and taglist and cscope setting "
"""""""""""""""""""""""""""""""""""""""

if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:vimrc_iswindows=1
else
    let g:vimrc_iswindows=0
endif

"" 切换到当前文件目录; 不推荐
"autocmd BufEnter * lcd %:p:h

nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR> 
nmap <C-t> :colder<CR>:cc<CR>

"search declaration
nmap <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
"search global defination
nmap <leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
"search call postion
nmap <leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
"search specified string
nmap <leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
"search egrep
nmap <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
"search file
nmap <leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
"search files that include this file
nmap <leader>fi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"search the function called by current function
nmap <leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
function! Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:vimrc_iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
         execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:vimrc_iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:vimrc_iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
         execute "!ctags -R --sort=1 --langmap=c++:.c.cpp.cxx.cc.hpp.hxx.h.cu --c-types=+p --c++-kinds=+px --fields=+iaS --extra=+q ."
         "execute "!ctags -R --c-types=+p --c++-kinds=+p --fields=+iaS *"
        " execute "!ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ -R --file-scope=no --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:vimrc_iswindows!=1)
             execute "!find `pwd` -name '*.cc' -o -name '*.h' -o -name '*.hpp' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' -o -name '*.py' > cscope.files"
        else
             execute "!dir /s/b *.cc,*.c,*.cpp,*.h,*.java,*.cs,*.py >> cscope.files"
        endif
        silent execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            silent execute "cs add cscope.out"
        endif
    endif
endfunction

map <f11> :Tlist<CR>
map <leader>tu :call Do_CsTag()<CR>

if(executable('ctags-exuberant'))
let Tlist_Ctags_Cmd='ctags-exuberant'
elseif(executable('ctags'))
let Tlist_Ctags_Cmd='ctags'
endif

let Tlist_Use_Right_Window=0 " with value 0, the window would show ont the left
let Tlist_Show_One_File=0 " make taglist shows the function list of several files.
" with value 1, taglist will only show one file's
" function list
let Tlist_File_Fold_Auto_Close=1 " in case not current file, function list
" hidden.

let Tlist_Exit_OnlyWindow=1 " in case the taglist is the only window exists
" the vim would quit
let Tlist_Process_File_Always=0 " always update the tags or not. 0-no, 1-yes
let Tlist_Inc_Winwidth=0

let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=30
let Tlist_Use_Horiz_Window=0
"map <C-t> :TlistToggle<cr>

au Filetype txt let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
au Filetype txt let Tlist_Sort_Type='order'

nmap <f11> :Tlist<CR>

""" automatically update tags
function! DelTagOfFile(file)
  let fullpath = a:file
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let f = substitute(fullpath, cwd . "/", "", "")
  let f = escape(f, './')
  let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
  let resp = system(cmd)
endfunction
function! UpdateTags()
  let f = expand("%:p")
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
  call DelTagOfFile(f)
  let resp = system(cmd)
endfunction
"autocmd BufWritePost *.cc,*.hpp,*.cpp,*.h,*.c call UpdateTags()

"################################################################################"
""""""""""""""""""""""""""""""
" close tag when editing html
""""""""""""""""""""""""""""""

"function! InsertHtmlTag()
"let pat = '\c<\w\+\s*\(\s\+\w\+\s*=\s*[''#$;,()."a-z0-9]\+\)*\s*>'
"normal! a>
"let save_cursor = getpos('.')
"let result = matchstr(getline(save_cursor[1]), pat)
""if (search(pat, 'b', save_cursor[1]) && searchpair('<','','>', 'bn',0,getline('.')) > 0)
"if (search(pat, 'b', save_cursor[1]))
"   normal! lyiwf>
"   normal! o</
"   normal! p
"   normal! a>
"endif
":call cursor(save_cursor[1], save_cursor[2], save_cursor[3])
"endfunction
"au Filetype xhtml,html inoremap<buffer> > <ESC>:call InsertHtmlTag()<CR>a

"################################################################################"

"""""""""""""""""""""""""""
" lookupfile setting "
"""""""""""""""""""""""""""
let g:LookupFile_TagExpr = '"./filenametags"'
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
"if filereadable("./filenametags")                "设置tag文件的名字
"    let g:LookupFile_TagExpr = '"./filenametags"'
"endif
"映射LookupFile为,lk
noremap <silent><leader>lf :LUTags<cr>
"映射LUBufs为,ll
nmap <silent><leader>lb :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent><leader>lw :LUWalk<cr>

" lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
    let _tags = &tags
    try
        let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc' 

func! UpdateFileTags() 
    exec "!bash ~/.vim/bin/gftags.sh . filenametags"
    "silent exec "!gftags.sh"
endfunc 
nmap <leader>ftu :call UpdateFileTags()<CR><CR>



"################################################################################"
"""""""""""""""""""""""""""
" omnicppcomplete setting "
"""""""""""""""""""""""""""
" neccessary setting for the Omni plugin
filetype plugin indent on
set nocompatible

set completeopt=menu,longest
"set completeopt+=preview
let OmniCpp_DisplayMode = 1  " autocomplete with 'Myclass::'
let OmniCpp_MayCompleteDot = 0 " autocomplete with .
let OmniCpp_MayCompleteArrow = 0 " autocomplete with ->
let OmniCpp_MayCompleteScope = 0 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 0 " show function prototype (i.e. parameters) in popup window
"let OmniCpp_DisplayMode = 1

"let OmniCpp_DefaultNamespaces=["std", "_GLIBCXX_STD"]

"au Filetype java setlocal omnifunc=javacomplete#Complete
"au Filetype ruby setlocal omnifunc=rubycomplete#Complete
"au Filetype c,cpp setlocal omnifunc=omni#cpp#complete#Main
"""" omnicpp and yme are conflict, remapping this so as to avoid the conflict
imap <C-Z><C-L> <Esc>:setlocal omnifunc=omni#cpp#complete#Main<CR>a<C-x><C-O>
imap <C-Z><C-K> <Esc>:setlocal omnifunc=youcompleteme#OmniComplete<CR>a<C-x><C-O>

"###########################
" minibufexplorerpp plugin
"###########################
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

"################################################################################"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" temp setting, lest i use one plugin and i forget how to set "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"map <C-t> :NERDTree<cr>
"vmap <C-c> "+y

"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1

"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
"nnoremap <C-P> :call PhpDocSingle()<CR> 
"vnoremap <C-P> :call PhpDocRange()<CR> 

"##########################################################################"
""""""""""""""""""""""""""""""""
" code_complete plugin setting "
""""""""""""""""""""""""""""""""
"# use <> as the complete hotkey so that code_complete plugin can work with snipMate plugin
let g:completekey = "<C-j>"

"##########################################################################"

""""""""""""""""""""""""""""
" acp plugin setting "
"                    "
""""""""""""""""""""""
"# to disable the acp plugin when editing asm file
"au Filetype asm,txt call acp#disable()
let g:acp_enableAtStartup=0

"################################################################################"
"""""""""""""""
"ruby setting "
"""""""""""""""
" Load matchit (% to bounce from do to end, etc.)  
runtime! macros/matchit.vim  

augroup myfiletypes  
    " Clear old autocmds in group  
    autocmd!  
    " autoindent with two spaces, always expand tabs  
    autocmd FileType ruby,eruby,yaml set ai sw=4 sts=4 et  
augroup END  

au Filetype ruby,eruby,yaml let g:rubycomplete_buffer_loading = 1
au Filetype ruby,eruby,yaml let g:rubycomplete_classes_in_global = 1
au Filetype ruby,eruby,yaml let g:rubycomplete_rails = 1

"""""""""""""""""""" vjde setting """"""""""""""""""""
"let g:vjde_java_command='java'
"set cfu=VjdeCompletionFun   "C-X C-U to complete
"let g:vjde_lib_path="/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.25/lib/tools.jar"

"""""""""""""""""""" youcompleteme """""""""""""""""""
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_auto_trigger = 0
let g:ycm_collect_identifiers_from_tags_files = 0

"""" copy config file into current dir
"""" 1 .ycm_extra_conf.py
"""" 2 generic Makefile
function! LoadConfig()
    if (!filereadable(".ycm_extra_conf.py"))
        silent exec "!cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py ./"
    endif 
    if (!filereadable("Makefile"))
        silent exec "!cp ~/.vim/conf/Makefile ./"
    endif
endfunction
nnoremap <leader>lc :call LoadConfig()<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

""""""""""""""""""""""""" syntastic """""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""" neocomplete """"""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 0
let g:neocomplete#auto_completion_start_length = 1
let g:neocomplete#enable_cursor_hold_i = 1
let g:neocomplete#cursor_hold_i_time = 1000 " in msec

"################################################################################"
""""""""""""""""""""""""""
" project plugin setting "
""""""""""""""""""""""""""
"let g:proj_window_width=50

""""""""""""""""""""""""""""""""""
"" clang complete plugin setting "
""""""""""""""""""""""""""""""""""
"" EMPTY
"" Conflict with omni
"" disable auto completion for vim-clang 
"let g:clang_c_options='-std=gnu11' 
"let g:clang_cpp_options='-std=c++11 -stdlib=libc++' 
"let g:clang_auto=1
"" default 'longest' can not work with neocomplete 
"let g:clang_c_completeopt='menuone,preview' 
"let g:clang_cpp_completeopt='menuone,preview' 
"
"" use neocomplete 
"" input patterns 
"if !exists('g:neocomplete#force_omni_input_patterns') 
"  let g:neocomplete#force_omni_input_patterns = {} 
"endif 
"
"" for c and c++ 
"let g:neocomplete#force_omni_input_patterns.c = 
"      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*' 
"let g:neocomplete#force_omni_input_patterns.cpp = 
"      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*' 

"################################################################################"
""""""""""""""""""""""""""""""""
" toggle hex mode or text mode "
""""""""""""""""""""""""""""""""
au Filetype txt let b:hex_toggle=1
func! Toggle_Hex ()
    if b:hex_toggle =~ 1
        exe "%!xxd"
        let b:hex_toggle=0
    else
        exe "%!xxd -r"
        let b:hex_toggle=1
    endif
endfunction
au Filetype txt nmap <leader>h :call Toggle_Hex()<CR>

"################################################################################"
""""""""""""""""""""""
" txtbrowser setting "
""""""""""""""""""""""
"let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'

"################################################################################"
""""""""""""""""""""
" NERDTree Setting "
""""""""""""""""""""
"# Mapping NERDTree plugin
nmap <f12> :NERDTreeToggle<CR>

"################################################################################"
""""""""""""""""""""""""""
" cscope and tag setting "
""""""""""""""""""""""""""
set nocscopetag
set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i- 

"function! LoadCscope()
"  let db = findfile("cscope.out", ".;")
"  if (!empty(db))
"    let path = strpart(db, 0, match(db, "/cscope.out$"))
"    set nocscopeverbose " suppress 'duplicate connection' error
"    exe "cs add " . db . " " . path
"    set cscopeverbose
"  endif
"endfunction
"au BufEnter * call LoadCscope()

"################################################################################"
" man.vim plugin
map <leader>k <Plug>(Man)
nmap K <Plug>(Man)

"################################################################################"
"""""""""""""""""""""
"  hex              "
"""""""""""""""""""""
augroup Binary
    au!
    au BufReadPre  *.bin let &bin=1
    au BufReadPost *.bin if &bin | %!xxd
    au BufReadPost *.bin set ft=xxd | endif
    au BufWritePre *.bin if &bin | %!xxd -r
    au BufWritePre *.bin endif
    au BufWritePost *.bin if &bin | %!xxd
    au BufWritePost *.bin set nomod | endif
augroup END

"################################################################################"
map <F10> :execute " grep -srnw --binary-files=without-match --exclude=\*~ --exclude-dir=.git . -e " . expand("<cword>") . " " <bar> cwindow<CR>
