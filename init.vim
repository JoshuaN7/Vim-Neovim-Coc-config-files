set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set noswapfile
set encoding=utf-8
set hidden

call plug#begin('C:\Users\josh8\AppData\Local\nvim\autoload\plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neoclide/coc.nvim' , {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'tpope/vim-fugitive'
Plug 'dstein64/vim-startuptime'

call plug#end()

colorscheme nord
set background=dark
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set incsearch
let NERDTreeMinimalUI=1
set termguicolors
set noerrorbells
set shiftwidth=4
set expandtab
set nu
set nowrap
"backspace settings lol
set backspace=indent,eol,start " backspace over everything in insert mode
set linespace=0

"remaps
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let mapleader = " "
nnoremap <Leader>pt :NERDTreeToggle<Enter>
nnoremap <Leader>rp :w !python<Enter>
map  <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
cabbrev term bo term
nnoremap <leader>ff <cmd>Telescope find_files<cr>
hi Normal guibg=NONE ctermbg=NONE
"LualineStuff

lua << EOF
require('lualine').setup({
    options = {
         theme = 'nord',
         icons_enabled = true,
         sections_seperators = {'', ''},
         component_seperators = {'', ''}
         
        },
    sections = {
         lualine_a = {'mode'},
         lualine_b = {'branch'},
         lualine_c = {'filename'},
         lualine_x = {
             {'diagnostics', sources = {"nvim_lsp"}, symbols = {error = '', warn = '', info = '', hint = ' '}},
             'encoding',
             'filetype'
             },
         lualine_y = {'progress'},
         lualine_z = {'location'}
         },
     inactive_sections = {
         lualine_a = {},
         lualine_b = {},
         lualine_c = {'filename'},
         lualine_x = {'location'},
         lualine_y = {},
         lualine_z = {}

         },
     tabline = {
         },
     extensions = {'fugitive'}
})
require("bufferline").setup{}
EOF

nnoremap <Leader>] :BufferLineCycleNext<Enter>
nnoremap <Leader>[ :BufferLineCyclePrev<Enter>
nnoremap <Leader>pp "*p
