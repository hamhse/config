

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
Plug 'jpo/vim-railscasts-theme'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'vivien/vim-linux-coding-style'

call plug#end()

" Nerdtree settings
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeHighlightCursorline=0

" Taglit on the right side
let Tlist_Use_Right_Window = 1

" Status bar
"set laststatus=2

" Airline
"au VimEnter * AirlineToggle
"let g:loaded_airline = 1
"let g:airline_theme='dark'

" Vim settings
set hlsearch
set foldenable
set nocompatible
set nocompatible
filetype plugin on
syntax on
set listchars=tab:>-,trail:-,eol:.
syntax enable


" Theme
if has("gui_running")
   set bg=dark
   set t_Co=256
   colorscheme railscasts
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
	  colorscheme railscasts
   endif
   "set nocursorline
endif

" Font
if has('win32') || has('win64')
	set guifont=Consolas:h12
endif


"hi Visual term=reverse cterm=reverse guibg=Grey

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
