
if has('win32') || has('win64')
	let $HOME = $USERPROFILE
endif

" Plug settings
if has('win32') || has('win64')
	call plug#begin('$HOME/vimfiles/plugged')
else
	call plug#begin('$HOME/.vim/plugged')
endif

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/Mark--Karkat'
Plug 'chazy/cscope_maps'
Plug 'vim-scripts/MultipleSearch2.vim'
Plug 'majutsushi/tagbar'
Plug 'rhysd/vim-clang-format'
Plug 'vivien/vim-linux-coding-style'
Plug 'tomasr/molokai'

call plug#end()

" Nerdtree settings
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeHighlightCursorline=0

" Taglist on the right side
let Tlist_Use_Right_Window = 1

" Status bar
" set laststatus=2

" Vim settings
set hlsearch 		 " highlight search terms
set incsearch 		 " show search matches as you type
set foldenable
set nocompatible
filetype plugin on
set listchars=tab:>-,trail:-,eol:.
set autoindent 		 " always set autoindenting on
set copyindent 		 " copy the previous indentation on autoindenting
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
"set visualbell          
set noerrorbells         " don't beep
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile
set pastetoggle=<F2>


if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax enable
   syntax on
endif

" Theme
if has("gui_running")
   set bg=dark
   set t_Co=256
   colorscheme default
   " Disable the toolbar
   set guioptions-=m  "remove menu barf
   set guioptions-=T  "remove toolbar
   set guioptions-=r  "remove right-hand scroll bar
   set guioptions-=L  "remove lefthand scroll bar

else
   set t_Co=256
   set bg=dark
   if has('win32') || has('win64')
	  colorscheme default
   else
	  colorscheme molokai
   endif
   "set nocursorline
endif

" Font
if has('win32') || has('win64')
	set guifont=Consolas:h12
endif


hi Visual term=reverse cterm=reverse guibg=Grey

" Linux Coding

let g:linuxsty_patterns = [ "/linux/", "/kernel/", "/qcacld/" ]

let g:clang_format#style_options = {
			\ "BasedOnStyle": "LLVM",
			\ "IndentWidth" : 8,
			\ "UseTab" : "Always",
			\ "AllowShortIfStatementsOnASingleLine" : "false",
                        \ "BreakBeforeBraces": "Linux",
                        \ "ColumnLimit": "80",
			\ "IndentCaseLabels" : "false", }

"autocmd FileType c ClangFormatAutoEnable
