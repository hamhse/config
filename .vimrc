
" Plug settings
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/taglist.vim'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/Mark--Karkat'
Plug 'chazy/cscope_maps'
Plug 'vim-scripts/MultipleSearch2.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'vim-scripts/louver.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'jpo/vim-railscasts-theme'
Plug 'chriskempson/base16-vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Nerdtree settings
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeHighlightCursorline=0

" Taglit on the right side
let Tlist_Use_Right_Window = 1

" Status bar
"set laststatus=2
"let g:loaded_airline = 1
"au VimEnter * AirlineToggle

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
   colorscheme=railscasts
   " Disable the toolbar
   set guioptions-=m  "remove menu barf
   set guioptions-=T  "remove toolbar
   set guioptions-=r  "remove right-hand scroll bar
   set guioptions-=L  "remove lefthand scroll bar

else
   set t_Co=256
   set bg=dark
   colorscheme railscasts
   "set nocursorline
endif

"hi Visual term=reverse cterm=reverse guibg=Grey
