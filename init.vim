call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'jiangmiao/auto-pairs'
call plug#end()

if has('termguicolors')
      set termguicolors
    endif

let g:sonokai_style = 'atlantis'

colorscheme sonokai

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

set hidden
set number
set relativenumber
set inccommand=split
set splitright

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>nv :vsplit <cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>

nnoremap <leader>cl oconsole.log('');
