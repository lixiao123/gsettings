" Author:
" 		foree
" Email:
" 		beijing.2008.lm@163.com
" Section:
"     -> Vundle
"     -> General
"     -> Colors and Fonts
"     -> Files, backups and undo
"     -> Text, tab and indent related
"     -> Moving around, tabs, windows and buffers
"     -> Statusline
"     -> Editing mappings
"     -> Plugins configuration
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" let path = '~/some/path/here"
" call vundle#rc()
Plugin 'gmarik/Vundle.vim'

"================添加tags===============
Plugin 'vim-scripts/taglist.vim'

"=========autocomplPop自动补全==========
Plugin 'vim-scripts/AutoComplPop'

"===============糗事百科=============
"Plugin 'vim-scripts/qiushibaike'

"==========add lookupfile==============
Plugin 'vim-scripts/genutils'
Plugin 'vim-scripts/lookupfile'

"===============supertab自动补全================
Plugin 'ervandew/supertab'

"==============显示对齐线==============
"Plugin 'nathanaelkane/vim-indent-guides'

"=============添加winmanager============
Plugin 'vim-scripts/winmanager'

"===========添加NERD_tree===============
Plugin 'vim-scripts/The-NERD-tree'

"==========add minibufexpl==============
Plugin 'fholgado/minibufexpl.vim'

"==========add vimwiki 	================
Plugin 'vimwiki/vimwiki'

"==========add calendar.vm==============
Plugin 'itchyny/calendar.vim'

call vundle#end()
filetype on
filetype plugin on
filetype indent on 


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""
"enable filetype plugins
"检测文件类型 
"filetype on 
"载入文件类型插件 
"filetype plugin on 
"为特定文件类型载入相关的缩进文件 
"filetype indent on 

" set mapleader
let mapleader = ";"

"设定默认编码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 

"使用VIM自己的模式，不使用VI的模式 
set nocompatible 

"历史文件记录的行数 
set history=700 

"保存全局变量 
set viminfo+=!  

"set previewwindow

" set wrapmargin( 环绕 ),设置与右边界的距离，以便自动插入换行符
set wm=10

set number
set autoindent

" Ignore case when searching
set ignorecase

" 智能对齐
set smartindent
set guioptions=T

" Always show current position
set ruler

" Makes search act like search in modern browsers
set incsearch

" show matching brackets when text indicator is over them
set showmatch

" highlight search results
set hlsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set vb t_vb=
set tm=500

"设置折叠
set foldcolumn=3
set foldmethod=syntax


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlighting
"语法高亮
syntax on
syntax enable

"colorscheme desert
"colorscheme darkblue
colorscheme seoul256


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off 
set nobackup


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Statusline
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ %P


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable highlight when <leader><CR> is pressed
map <silent> <leader><CR> :noh<CR>

" Smart way to move between windows
nnoremap <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Smart way to resize windows
"map - <C-w>-
"map + <C-w>+

" Useful mappings for managing tabs
nnoremap <C-p> :tabprevious <CR>
nnoremap <C-n> :tabnext <CR>
nnoremap <C-o> :tabnew <CR>
nnoremap <C-c> :tabclose <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Map <leader>j to esc
inoremap <leader>j <Esc>

" Map <leader>q to quick quit
nnoremap <leader>q :q<CR>

" Map fast save file
nnoremap <leader>w :w<CR>

" quick quit quickfix
nmap <leader>on :only<CR>

" Set mappings for quickfix
nnoremap <silent> <leader>cn :cn<CR>
nnoremap <silent> <leader>cp :cp<CR>
nnoremap <silent> <leader>cw :cw 10<CR>

" Fast reloading of the .vimrc
nnoremap <silent> <leader>ss :source ~/.vimrc<CR>

" Fast editing of .vimrc
nnoremap <silent> <leader>ee :e ~/.vimrc<CR>

" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Map <leader>cf to save file and make 
map <buffer> <leader>cf :w<CR>:make<CR>

" set for cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap ;;s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap ;;g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap ;;c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap ;;t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ;;e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap ;;f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap ;;i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap ;;d :cs find d <C-R>=expand("<cword>")<CR><CR>

" execute project related configuration in current directory
"if filereadable("workspace.vim")
"	source workspace.vim
"endif

"function Switch(filename)
"	let fullfn = substitute(a:filename, "^\\~/", $HOME . "/", "")
"	"find in current tab
"	let bufwinnr = bufwinnr(a:filename)
"	if bufwinnr != -1
"		exec bufwinnr . "wincmd w"
"		return
"	else
"		"find in each tab
"		tabfirst
"		let tab = 1
"		while tab <= tabpagenr("$")
"			let bufwinnr = bufwinnr(a:filename)
"			if bufwinnr != -1
"				exec "normal " . tab . "gt"
"				exec bufwinnr . "wincmd w"
"				return
"			endif
"			tabnext
"			let tab = tab + 1
"		endwhile
"		" no exist, new tab
"		exec "tabnew" . a:filename
"	endif
"endfunction

" set sessionoptions for vim
set sessionoptions-=curdir
set sessionoptions+=sesdir

" Compile and run
"nnoremap <leader>cf :call CompileGcc()<CR>
nmap cf :call CompileGcc()<CR> 
nnoremap cr :call RunFunction()<CR>

" gcc compiler function
func! CompileGcc()
	exec "w"
	if &filetype == 'c'
	   "!gcc % -o %<
		   :make %<
		  " let g:shell_error="$?"
		  " if $shell_error==0 
		"	   !echo "aa"
			"   exec "! ./%<"
		"j   else
			   :cw
		 "  endif
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
	elseif &filetype == 'java' 
		exec "!javac %" 
	endif
endfunc

" run function
func! RunFunction()
	exec "w"
	if &filetype == 'c'
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "! ./%<"
	elseif &filetype == 'java' 
		exec "!java %<"
	elseif &filetype == 'sh'
		:!chmod u+x %
		:e %
		:!sh %
	elseif &filetype == 'lua'
		:!lua %
	else
		:!python %
	endif
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""

"==============minibufexpl======================
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

"===============supertab自动补全================
"对齐线的宽度为1
let g:indent_guides_guide_size=1

"设置<TAB>键补全
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType = "<C-X><C-P>"
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-N>"
	endif
endfunction

""映射tab键智能补全
inoremap <Tab> <C-R>=CleverTab()<CR>

"================添加tags===============
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

nnoremap <silent> <F9> :TlistToggle<CR>

"设置默认加载的tags文件

"set tags=/home/foree/android_source/system/tags
"set tags=~/github/c-coder/snl/tags

"=============添加winmanager============
"合并winmanager和taglist窗口

"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout="NERDTree|TagList"
nmap wm :WMToggle<CR>

"===========添加NERD_tree===============
"Used by winmanager {{{1
"use NERD_Tree replace FileExploer
let g:NERDTree_title = "[NERDTree]"

function! NERDTree_Start()
    exe 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"==========add lookupfile==============
"set filenametags if it exist
if filereadable("./filenametags")
	let g:LookupFile_TagExpr='"./filenametags"'
endif

" input at least 2 characters 
let g:LookupFile_MinPatLength = 2

" use enter key to open first file
let g:LookupFile_AlwaysAcceptFirst = 1

" not preserve last pattern
let g:LookupFile_PreserveLastPattern = 0

" preserve pattern history
let g:LookupFile_PreservePatternHistory = 1

" can't create new file
let g:LookupFile_AllowNewFiles=0

" map lk to LUTags
nmap <silent> <leader>lk :LUTags<CR>

" map ll to LUBufs
nmap <silent> <leader>ll :LUBufs<CR>

" map lw to LUWalk
nmap <silent> <leader>lw :LUWalk<CR>

"============add vimwiki================
" fast convertion and browse html 
nnoremap <silent> <leader>wk :Vimwiki2HTML<CR>
nnoremap <silent> <leader>wb :Vimwiki2HTMLBrowse<CR>
nnoremap <silent> <leader>wka :VimwikiAll2HTML<CR>
nnoremap <silent> <leader><Space> :VimwikiToggleListItem<CR>

" 多个wiki项目的配置
let g:vimwiki_list = [{ 'path' : '~/vimwiki/',
			\ 'path_html': '~/vimwiki_html/',
			\ 'template_path': '~/vimwiki/templates/',
			\ 'template_default': 'default.html',
			\ 'diary_link_count' : 5 },
			\{ 'path' : '~/Public/guitarwiki/',
			\ 'path_html': '~/Public/guitarwiki_html/', }]

"驼峰英语变为维基单词,关闭
let g:vimwiki_camel_case = 0

" vimwiki菜单项，关闭
let g:vimwiki_menu = ''

" 在计算串长度时特别考虑中文字符
let g:vimwiki_CJK_length = 1

" 关闭自动折叠
let g:vimwiki_folding = 'list'
