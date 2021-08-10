" set number lines
set number

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'ervandew/supertab'
call plug#end()

set encoding=UTF-8

"Nerd Tree Keybinds
map <F5> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html,*.js,*.css
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"Airline Settings/Keybinds
"Enable Powerline fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"Always show tabs
set showtabline=2

set laststatus=2
set t_Co=256
set background=dark

if (has("nvim"))
	  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has("termguicolors"))
	    set termguicolors
    endif

"relative numbers (ex. 17+k)
set nu rnu
set clipboard = unnamed
set ruler
set showcmd
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches
"clears highlights
nnoremap // :noh<return>

