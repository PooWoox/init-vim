call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/vim-gitbranch'
Plug 'itchyny/lightline.vim'
Plug 'turbio/bracey.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
call plug#end()

let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }


let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

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

nmap <silent> K :call CocAction('doHover')<CR>
"autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Opens NERD tree
map <C-b> :NERDTreeToggle<CR>
