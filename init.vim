call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim'
Plug 'joshdick/onedark.vim'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/vim-gitbranch'
Plug 'itchyny/lightline.vim'
Plug 'turbio/bracey.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
call plug#end()

let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"if (has("termguicolors"))
  "set termguicolors
"endif

syntax on
set background=dark
colorscheme palenight

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set noshowmode
set hidden
set number
set relativenumber
set inccommand=split
set splitright

let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>bv :vsplit ~/rodrigo/Documents/draft.md<cr>
nnoremap <leader>nv :vsplit <cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <leader>y "*y
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>/ :noh<return><esc>
nnoremap <leader>140 :vertical resize 140<return><esc>
nnoremap <leader>100 :vertical resize 100<return><esc>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"Opens file in browser
nnoremap <leader>f :exe ':silent !firefox %'<CR>

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

nmap <silent> K :call CocAction('doHover')<CR>
"autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Opens NERD tree
map <C-b> :NERDTreeToggle<CR>

" Emmet remap
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
