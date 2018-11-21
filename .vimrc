
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
Plug 'pbrisbin/vim-colors-off'
Plug 'fxn/vim-monochrome'
Plug 'vim-airline/vim-airline'
Plug 'reedes/vim-colors-pencil'
Plug 'ntpeters/vim-better-whitespace'

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
	  colorscheme pencil
   endif
   "set nocursorline
endif

" Font
if has('win32') || has('win64')
	set guifont=Consolas:h12
endif

let g:airline_theme = 'pencil'
"let g:pencil_higher_contrast_ui = 1  " 0=blue (def), 1=normal
"let g:pencil_neutral_code_bg = 1 " 0=gray (def), 1=normal
"let g:pencil_gutter_color = 1      " 0=mono (def), 1=color
let g:pencil_spell_undercurl = 1       " 0=underline, 1=undercurl (def)

"hi Visual term=reverse cterm=reverse guibg=reverse
"hi Visual cterm=reverse ctermbg=black
highlight SpecialKey ctermfg=darkgrey guifg=grey70

"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/

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
